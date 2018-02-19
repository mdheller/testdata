; ModuleID = 'coreutils-8.27/src/mv.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.timespec = type { i64, i64 }
%struct.hash_table = type { %struct.hash_entry*, %struct.hash_entry*, i64, i64, i64, %struct.hash_tuning*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*, %struct.hash_entry* }
%struct.hash_tuning = type { float, float, float, float, i8 }
%struct.hash_entry = type { i8*, %struct.hash_entry* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.fs_res = type { i64, i32, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.cp_options = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.hash_table*, %struct.hash_table* }
%struct.rm_options = type { i8, i32, i8, i8, i8, %struct.timespec*, i8, i8, i8 }
%struct.FTS = type { %struct._ftsent*, %struct._ftsent*, %struct._ftsent**, i64, i8*, i32, i32, i64, i64, i32 (%struct._ftsent**, %struct._ftsent**)*, i32, %struct.hash_table*, %union.anon, %struct.I_ring }
%struct._ftsent = type { %struct._ftsent*, %struct._ftsent*, %struct._ftsent*, %struct.__dirstream*, i64, i8*, i8*, i8*, i32, i32, i64, %struct.FTS*, i64, i64, i64, i16, i16, i16, [1 x %struct.stat], [0 x i8] }
%struct.__dirstream = type opaque
%union.anon = type { %struct.hash_table* }
%struct.I_ring = type { [4 x i32], i32, i32, i32, i8 }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.dir_list = type { %struct.dir_list*, i64, i64 }
%struct.error_context = type { void (%struct.error_context*, i8*, ...)*, i8* (%struct.error_context*, i8*)*, void (%struct.error_context*, i8*)* }
%struct.extent_scan = type { i32, i64, i32, i64, i8, i8, %struct.extent_info* }
%struct.extent_info = type { i64, i64, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.Src_to_dest = type { i64, i64, i8* }
%union.anon.16 = type { %struct.fiemap, [4064 x i8] }
%struct.fiemap = type { i64, i64, i32, i32, i32, i32, [0 x %struct.fiemap_extent] }
%struct.fiemap_extent = type { i64, i64, i64, [2 x i64], i32, [3 x i32] }
%struct.link_arg = type { i32, i8*, i32, i32 }
%struct.symlink_arg = type { i8*, i32 }
%struct.F_triple = type { i8*, i64, i64 }
%struct.permission_context = type { i32, %struct.__acl_ext*, %struct.__acl_ext*, i8 }
%struct.__acl_ext = type opaque
%struct.__mbstate_t = type { i32, %union.anon.42 }
%union.anon.42 = type { i32 }
%struct.direntry_t = type { i8*, i64 }
%struct.randint_source = type { %struct.randread_source*, i64, i64 }
%struct.randread_source = type { %struct._IO_FILE*, void (i8*)*, i8*, %union.anon.112 }
%union.anon.112 = type { %struct.isaac }
%struct.isaac = type { i64, %struct.isaac_state, %union.anon.0 }
%struct.isaac_state = type { [256 x i64], i64, i64, i64 }
%union.anon.0 = type { [256 x i64] }
%struct.cycle_check_state = type { %struct.timespec, i64, i32 }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.__fsid_t = type { [2 x i32] }
%struct.LCO_ent = type { i64, i8 }
%struct.Active_dir = type { i64, i64, %struct._ftsent* }
%struct.__acl_entry_ext = type opaque
%struct.timezone = type { i32, i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [127 x i8] c"Usage: %s [OPTION]... [-T] SOURCE DEST\0A  or:  %s [OPTION]... SOURCE... DIRECTORY\0A  or:  %s [OPTION]... -t DIRECTORY SOURCE...\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Rename SOURCE to DEST, or move SOURCE(s) to DIRECTORY.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.28 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [418 x i8] c"      --backup[=CONTROL]       make a backup of each existing destination file\0A  -b                           like --backup but does not accept an argument\0A  -f, --force                  do not prompt before overwriting\0A  -i, --interactive            prompt before overwrite\0A  -n, --no-clobber             do not overwrite an existing file\0AIf you specify more than one of -i, -f, -n, only the final one takes effect.\0A\00", align 1
@.str.4 = private unnamed_addr constant [184 x i8] c"      --strip-trailing-slashes  remove any trailing slashes from each SOURCE\0A                                 argument\0A  -S, --suffix=SUFFIX          override the usual backup suffix\0A\00", align 1
@.str.5 = private unnamed_addr constant [527 x i8] c"  -t, --target-directory=DIRECTORY  move all SOURCE arguments into DIRECTORY\0A  -T, --no-target-directory    treat DEST as a normal file\0A  -u, --update                 move only when the SOURCE file is newer\0A                                 than the destination file or when the\0A                                 destination file is missing\0A  -v, --verbose                explain what is being done\0A  -Z, --context                set SELinux security context of destination\0A                                 file to default type\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.29 = private unnamed_addr constant [221 x i8] c"\0AThe backup suffix is '~', unless set with --suffix or SIMPLE_BACKUP_SUFFIX.\0AThe version control method may be selected via the --backup option or through\0Athe VERSION_CONTROL environment variable.  Here are the values:\0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [222 x i8] c"  none, off       never make backups (even if --backup is given)\0A  numbered, t     make numbered backups\0A  existing, nil   numbered if numbered backups exist, simple otherwise\0A  simple, never   always make simple backups\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"mv\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.42 = private unnamed_addr constant [69 x i8] c"Report %s translation bugs to <http://translationproject.org/team/>\0A\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.44 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"bfint:uvS:TZ\00", align 1
@long_options = internal constant [14 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 2, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 1, i32* null, i32 83 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
@optarg = external local_unnamed_addr global i8*, align 8
@remove_trailing_slashes = internal unnamed_addr global i1 false, align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"multiple target directories specified\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"failed to access %s\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"target %s is not a directory\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Mike Parker\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [21 x i8] c"missing file operand\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"missing destination file operand after %s\00", align 1
@.str.22 = private unnamed_addr constant [70 x i8] c"cannot combine --target-directory (-t) and --no-target-directory (-T)\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"2 <= n_files\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"src/mv.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"options --backup and --no-clobber are mutually exclusive\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"backup type\00", align 1
@rm_option_init.dev_ino_buf = internal global %struct.timespec zeroinitializer, align 8
@.str.60 = private unnamed_addr constant [31 x i8] c"failed to get attributes of %s\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"VALID_STATUS (status)\00", align 1
@__PRETTY_FUNCTION__.do_move = private unnamed_addr constant [69 x i8] c"_Bool do_move(const char *, const char *, const struct cp_options *)\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"backup\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"interactive\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"no-clobber\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"no-target-directory\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"strip-trailing-slashes\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"target-directory\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"fts_read failed\00", align 1
@.str.4.32 = private unnamed_addr constant [17 x i8] c"cannot remove %s\00", align 1
@.str.5.33 = private unnamed_addr constant [51 x i8] c"refusing to remove %s or %s directory: skipping %s\00", align 1
@.str.6.34 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.7.35 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.9.36 = private unnamed_addr constant [45 x i8] c"it is dangerous to operate recursively on %s\00", align 1
@.str.10.37 = private unnamed_addr constant [58 x i8] c"it is dangerous to operate recursively on %s (same as %s)\00", align 1
@.str.8.38 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.11.39 = private unnamed_addr constant [49 x i8] c"use --no-preserve-root to override this failsafe\00", align 1
@.str.12.40 = private unnamed_addr constant [46 x i8] c"skipping %s, since it's on a different device\00", align 1
@.str.13.41 = private unnamed_addr constant [186 x i8] c"WARNING: Circular directory structure.\0AThis almost certainly means that you have a corrupted file system.\0ANOTIFY YOUR SYSTEM MANAGER.\0AThe following directory is part of the cycle:\0A  %s\0A\00", align 1
@.str.14.42 = private unnamed_addr constant [21 x i8] c"traversal failed: %s\00", align 1
@.str.15.43 = private unnamed_addr constant [56 x i8] c"unexpected failure: fts_info=%d: %s\0Aplease report to %s\00", align 1
@.str.16.44 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.1.45 = private unnamed_addr constant [17 x i8] c"VALID_STATUS (s)\00", align 1
@.str.2.46 = private unnamed_addr constant [13 x i8] c"src/remove.c\00", align 1
@__PRETTY_FUNCTION__.rm = private unnamed_addr constant [60 x i8] c"enum RM_status rm(char *const *, const struct rm_options *)\00", align 1
@.str.3.47 = private unnamed_addr constant [17 x i8] c"fts_close failed\00", align 1
@.str.21.48 = private unnamed_addr constant [22 x i8] c"removed directory %s\0A\00", align 1
@.str.22.49 = private unnamed_addr constant [12 x i8] c"removed %s\0A\00", align 1
@.str.17.50 = private unnamed_addr constant [48 x i8] c"%s: descend into write-protected directory %s? \00", align 1
@.str.18.51 = private unnamed_addr constant [32 x i8] c"%s: descend into directory %s? \00", align 1
@.str.19.52 = private unnamed_addr constant [35 x i8] c"%s: remove write-protected %s %s? \00", align 1
@.str.20.53 = private unnamed_addr constant [19 x i8] c"%s: remove %s %s? \00", align 1
@.str.1.54 = private unnamed_addr constant [37 x i8] c"failed to get security context of %s\00", align 1
@.str.3.55 = private unnamed_addr constant [41 x i8] c"failed to set the security context of %s\00", align 1
@top_level_src_name = internal unnamed_addr global i8* null, align 8
@top_level_dst_name = internal unnamed_addr global i8* null, align 8
@.str.12.60 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1
@.str.14.61 = private unnamed_addr constant [22 x i8] c"omitting directory %s\00", align 1
@.str.13.62 = private unnamed_addr constant [40 x i8] c"-r not specified; omitting directory %s\00", align 1
@.str.15.63 = private unnamed_addr constant [49 x i8] c"warning: source file %s specified more than once\00", align 1
@.str.16.64 = private unnamed_addr constant [28 x i8] c"%s and %s are the same file\00", align 1
@.str.17.65 = private unnamed_addr constant [52 x i8] c"cannot overwrite non-directory %s with directory %s\00", align 1
@.str.18.66 = private unnamed_addr constant [43 x i8] c"will not overwrite just-created %s with %s\00", align 1
@.str.19.67 = private unnamed_addr constant [49 x i8] c"cannot overwrite directory %s with non-directory\00", align 1
@.str.20.68 = private unnamed_addr constant [51 x i8] c"cannot move directory onto non-directory: %s -> %s\00", align 1
@.str.21.69 = private unnamed_addr constant [50 x i8] c"backing up %s would destroy source;  %s not moved\00", align 1
@.str.22.70 = private unnamed_addr constant [51 x i8] c"backing up %s would destroy source;  %s not copied\00", align 1
@.str.23.71 = private unnamed_addr constant [17 x i8] c"cannot backup %s\00", align 1
@.str.24.72 = private unnamed_addr constant [17 x i8] c"cannot remove %s\00", align 1
@.str.25.73 = private unnamed_addr constant [12 x i8] c"removed %s\0A\00", align 1
@.str.26.74 = private unnamed_addr constant [49 x i8] c"will not copy %s through just-created symlink %s\00", align 1
@.str.27.75 = private unnamed_addr constant [45 x i8] c"cannot copy a directory, %s, into itself, %s\00", align 1
@.str.28.76 = private unnamed_addr constant [54 x i8] c"warning: source directory %s specified more than once\00", align 1
@.str.29.77 = private unnamed_addr constant [45 x i8] c"will not create hard link %s to directory %s\00", align 1
@.str.30.78 = private unnamed_addr constant [47 x i8] c"cannot move %s to a subdirectory of itself, %s\00", align 1
@.str.31.79 = private unnamed_addr constant [21 x i8] c"cannot move %s to %s\00", align 1
@.str.32 = private unnamed_addr constant [60 x i8] c"inter-device move failed: %s to %s; unable to remove target\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"cannot copy cyclic symbolic link %s\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"cannot create directory %s\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"setting permissions for %s\00", align 1
@.str.54.80 = private unnamed_addr constant [9 x i8] c"%s -> %s\00", align 1
@.str.56.81 = private unnamed_addr constant [17 x i8] c"cannot access %s\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.37 = private unnamed_addr constant [63 x i8] c"%s: can make relative symbolic links only in current directory\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"cannot create symbolic link %s to %s\00", align 1
@.str.57.82 = private unnamed_addr constant [27 x i8] c"cannot open %s for reading\00", align 1
@.str.58.83 = private unnamed_addr constant [16 x i8] c"cannot fstat %s\00", align 1
@.str.59.84 = private unnamed_addr constant [56 x i8] c"skipping file %s, as it was replaced while being copied\00", align 1
@.str.60.85 = private unnamed_addr constant [40 x i8] c"not writing through dangling symlink %s\00", align 1
@.str.61.86 = private unnamed_addr constant [30 x i8] c"cannot create regular file %s\00", align 1
@.str.62 = private unnamed_addr constant [27 x i8] c"failed to clone %s from %s\00", align 1
@.str.65 = private unnamed_addr constant [31 x i8] c"%s: failed to get extents info\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"cannot lseek %s\00", align 1
@write_zeros.zeros = internal unnamed_addr global i8* null, align 8
@write_zeros.nz = internal unnamed_addr global i1 false, align 8
@write_zeros.fallback = internal global [1024 x i8] zeroinitializer, align 16
@.str.67 = private unnamed_addr constant [17 x i8] c"%s: write failed\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"failed to extend %s\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"error deallocating %s\00", align 1
@.str.45.87 = private unnamed_addr constant [24 x i8] c"preserving times for %s\00", align 1
@cached_umask.mask = internal unnamed_addr global i32 -1, align 4
@.str.46.88 = private unnamed_addr constant [30 x i8] c"preserving permissions for %s\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"failed to close %s\00", align 1
@.str.39.89 = private unnamed_addr constant [22 x i8] c"cannot create fifo %s\00", align 1
@.str.40.90 = private unnamed_addr constant [30 x i8] c"cannot create special file %s\00", align 1
@.str.41.91 = private unnamed_addr constant [29 x i8] c"cannot read symbolic link %s\00", align 1
@.str.42.92 = private unnamed_addr constant [31 x i8] c"cannot create symbolic link %s\00", align 1
@.str.72 = private unnamed_addr constant [52 x i8] c"failed to restore the default file creation context\00", align 1
@.str.43.93 = private unnamed_addr constant [36 x i8] c"failed to preserve ownership for %s\00", align 1
@.str.44.94 = private unnamed_addr constant [25 x i8] c"%s has unknown file type\00", align 1
@.str.47.95 = private unnamed_addr constant [20 x i8] c"cannot un-backup %s\00", align 1
@.str.48.96 = private unnamed_addr constant [21 x i8] c"%s -> %s (unbackup)\0A\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"security.selinux\00", align 1
@.str.73 = private unnamed_addr constant [28 x i8] c"clearing permissions for %s\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"error reading %s\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"error writing %s\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"overflow reading %s\00", align 1
@.str.55.97 = private unnamed_addr constant [14 x i8] c" (backup: %s)\00", align 1
@.str.51.98 = private unnamed_addr constant [45 x i8] c"%s: replace %s, overriding mode %04lo (%s)? \00", align 1
@.str.52.99 = private unnamed_addr constant [49 x i8] c"%s: unwritable %s (mode %04lo, %s); try anyway? \00", align 1
@.str.53.100 = private unnamed_addr constant [19 x i8] c"%s: overwrite %s? \00", align 1
@.str.49.101 = private unnamed_addr constant [33 x i8] c"cannot create hard link %s to %s\00", align 1
@src_to_dest = internal unnamed_addr global %struct.hash_table* null, align 8
@.str.116 = private unnamed_addr constant [55 x i8] c"scan->ei_count <= SIZE_MAX - fiemap->fm_mapped_extents\00", align 1
@.str.1.117 = private unnamed_addr constant [18 x i8] c"src/extent-scan.c\00", align 1
@__PRETTY_FUNCTION__.extent_scan_read = private unnamed_addr constant [45 x i8] c"_Bool extent_scan_read(struct extent_scan *)\00", align 1
@.str.2.118 = private unnamed_addr constant [64 x i8] c"fm_extents[i].fe_logical <= OFF_T_MAX - fm_extents[i].fe_length\00", align 1
@simple_pattern = internal constant [9 x i8] c"CuXXXXXX\00", align 1
@Version = local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.125, i64 0, i64 0), align 8
@.str.125 = private unnamed_addr constant [5 x i8] c"8.27\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.129 = private unnamed_addr constant [30 x i8] c"preserving permissions for %s\00", align 1
@.str.132 = private unnamed_addr constant [27 x i8] c"setting permissions for %s\00", align 1
@simple_backup_suffix = local_unnamed_addr global i8* null, align 8
@.str.139 = private unnamed_addr constant [21 x i8] c"SIMPLE_BACKUP_SUFFIX\00", align 1
@.str.1.140 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.5.141 = private unnamed_addr constant [5 x i8] c".~1~\00", align 1
@backup_args = internal constant [9 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.142, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7.143, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.144, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.145, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10.146, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11.147, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12.148, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13.149, i32 0, i32 0), i8* null], align 16
@backup_types = internal constant [8 x i32] [i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3], align 16
@.str.6.142 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.7.143 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.8.144 = private unnamed_addr constant [7 x i8] c"simple\00", align 1
@.str.9.145 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.10.146 = private unnamed_addr constant [9 x i8] c"existing\00", align 1
@.str.11.147 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.12.148 = private unnamed_addr constant [9 x i8] c"numbered\00", align 1
@.str.13.149 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.3.152 = private unnamed_addr constant [16 x i8] c"VERSION_CONTROL\00", align 1
@.str.2.153 = private unnamed_addr constant [17 x i8] c"$VERSION_CONTROL\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.158 = private unnamed_addr constant [19 x i8] c"error closing file\00", align 1
@.str.1.159 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.160 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@file_name.161 = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1
@.str.164 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.165 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.166 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = global i32 1, align 4
@.str.191 = private unnamed_addr constant [19 x i8] c"regular empty file\00", align 1
@.str.1.192 = private unnamed_addr constant [13 x i8] c"regular file\00", align 1
@.str.11.193 = private unnamed_addr constant [11 x i8] c"weird file\00", align 1
@.str.10.194 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.9.195 = private unnamed_addr constant [5 x i8] c"fifo\00", align 1
@.str.8.196 = private unnamed_addr constant [23 x i8] c"character special file\00", align 1
@.str.7.197 = private unnamed_addr constant [19 x i8] c"block special file\00", align 1
@.str.3.198 = private unnamed_addr constant [14 x i8] c"symbolic link\00", align 1
@.str.2.199 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@switch.table = private unnamed_addr constant [12 x i8] c"pc?d?b?-?l?s"
@.str.208 = private unnamed_addr constant [24 x i8] c"# entries:         %lu\0A\00", align 1
@.str.1.209 = private unnamed_addr constant [24 x i8] c"# buckets:         %lu\0A\00", align 1
@.str.2.210 = private unnamed_addr constant [33 x i8] c"# buckets used:    %lu (%.2f%%)\0A\00", align 1
@.str.3.211 = private unnamed_addr constant [24 x i8] c"max bucket length: %lu\0A\00", align 1
@default_tuning = internal constant %struct.hash_tuning { float 0.000000e+00, float 1.000000e+00, float 0x3FE99999A0000000, float 0x3FF69FBE80000000, i8 0 }, align 4
@program_name = local_unnamed_addr global i8* null, align 8
@.str.234 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.235 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.236 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.242, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.243, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.244, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.245, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.246, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.247, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.248, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.249, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.250, i32 0, i32 0), i8* null], align 16
@.str.241 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.242 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.243 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.244 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.245 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.246 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.247 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.248 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.249 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.250 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.11.251 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.252 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.253 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.254 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.255 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.256 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.257 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.270 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.275 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@comparison_function_table = internal unnamed_addr constant [3 x i32 (i8*, i8*)*] [i32 (i8*, i8*)* null, i32 (i8*, i8*)* @direntry_cmp_name, i32 (i8*, i8*)* @direntry_cmp_inode], align 16
@.str.2.280 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@letters = internal unnamed_addr constant [63 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789\00", align 16
@.str.281 = private unnamed_addr constant [35 x i8] c"! \22invalid KIND in __gen_tempname\22\00", align 1
@.str.1.282 = private unnamed_addr constant [15 x i8] c"lib/tempname.c\00", align 1
@__PRETTY_FUNCTION__.gen_tempname_len = private unnamed_addr constant [52 x i8] c"int gen_tempname_len(char *, int, int, int, size_t)\00", align 1
@switch.table.283 = private unnamed_addr constant [3 x i32 (i8*, i8*)*] [i32 (i8*, i8*)* @try_file, i32 (i8*, i8*)* @try_dir, i32 (i8*, i8*)* @try_nocreate]
@utimecmp.ht = internal unnamed_addr global %struct.hash_table* null, align 8
@utimecmp.new_dst_res = internal unnamed_addr global %struct.fs_res* null, align 8
@utimensat_works_really = internal unnamed_addr global i32 0, align 4
@lutimensat_works_really = internal unnamed_addr global i32 0, align 4
@.str.298 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.299 = private unnamed_addr constant [32 x i8] c"unable to display error message\00", align 1
@.str.300 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.301 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.302 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.303 = private unnamed_addr constant [203 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.304 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.305 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.306 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.307 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.308 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.309 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.310 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.311 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.312 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.313 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.316 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.317 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.318 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.319 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.320 = private unnamed_addr constant [39 x i8] c"http://www.gnu.org/software/coreutils/\00", align 1
@.str.19.321 = private unnamed_addr constant [64 x i8] c"General help using GNU software: <http://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@can_write_any_file.initialized = internal unnamed_addr global i1 false, align 1
@can_write_any_file.can_write = internal unnamed_addr global i8 0, align 1
@.str.1.336 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.337 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.340 = private unnamed_addr constant [16 x i8] c"errno != EINVAL\00", align 1
@.str.1.341 = private unnamed_addr constant [11 x i8] c"lib/xfts.c\00", align 1
@__PRETTY_FUNCTION__.xfts_open = private unnamed_addr constant [78 x i8] c"FTS *xfts_open(char *const *, int, int (*)(const FTSENT **, const FTSENT **))\00", align 1
@rpl_fcntl.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4
@.str.358 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2.363 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@switch.table.364 = private unnamed_addr constant [12 x i32] [i32 4096, i32 8192, i32 0, i32 16384, i32 0, i32 24576, i32 0, i32 32768, i32 0, i32 40960, i32 0, i32 49152]
@argmatch_die = local_unnamed_addr global void ()* @__argmatch_die, align 8
@.str.377 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.378 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.379 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.380 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.381 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.392 = private unnamed_addr constant [24 x i8] c"state->magic == 9827862\00", align 1
@.str.1.393 = private unnamed_addr constant [18 x i8] c"lib/cycle-check.c\00", align 1
@__PRETTY_FUNCTION__.cycle_check = private unnamed_addr constant [67 x i8] c"_Bool cycle_check(struct cycle_check_state *, const struct stat *)\00", align 1
@.str.1.398 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.411 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@charset_aliases = internal global i8* null, align 8
@.str.3.412 = private unnamed_addr constant [16 x i8] c"CHARSETALIASDIR\00", align 1
@.str.4.413 = private unnamed_addr constant [15 x i8] c"/usr/local/lib\00", align 1
@.str.2.414 = private unnamed_addr constant [14 x i8] c"charset.alias\00", align 1
@.str.5.415 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6.416 = private unnamed_addr constant [10 x i8] c"%50s %50s\00", align 1
@.str.1.417 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.428 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3.429 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.1.430 = private unnamed_addr constant [16 x i8] c"%s: end of file\00", align 1
@.str.2.431 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @usage(i32) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %8, label %3

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11
  %6 = load i8*, i8** @program_name, align 8
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* %5, i8* %6) #11
  br label %54

; <label>:8:                                      ; preds = %1
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.1, i64 0, i64 0), i32 5) #11
  %10 = load i8*, i8** @program_name, align 8
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10, i8* %10, i8* %10) #11
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 5) #11
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = tail call i32 @fputs_unlocked(i8* %12, %struct._IO_FILE* %13) #11
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.28, i64 0, i64 0), i32 5) #11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #11
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([418 x i8], [418 x i8]* @.str.3, i64 0, i64 0), i32 5) #11
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19) #11
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([184 x i8], [184 x i8]* @.str.4, i64 0, i64 0), i32 5) #11
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22) #11
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([527 x i8], [527 x i8]* @.str.5, i64 0, i64 0), i32 5) #11
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25) #11
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 5) #11
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28) #11
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 5) #11
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = tail call i32 @fputs_unlocked(i8* %30, %struct._IO_FILE* %31) #11
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([221 x i8], [221 x i8]* @.str.29, i64 0, i64 0), i32 5) #11
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = tail call i32 @fputs_unlocked(i8* %33, %struct._IO_FILE* %34) #11
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.30, i64 0, i64 0), i32 5) #11
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = tail call i32 @fputs_unlocked(i8* %36, %struct._IO_FILE* %37) #11
  %39 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i32 5) #11
  %40 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0)) #11
  %41 = tail call i8* @setlocale(i32 5, i8* null) #11
  %42 = icmp eq i8* %41, null
  br i1 %42, label %49, label %43

; <label>:43:                                     ; preds = %8
  %44 = tail call i32 @strncmp(i8* nonnull %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i64 3) #14
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

; <label>:46:                                     ; preds = %43
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.42, i64 0, i64 0), i32 5) #11
  %48 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #11
  br label %49

; <label>:49:                                     ; preds = %8, %43, %46
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.43, i64 0, i64 0), i32 5) #11
  %51 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #11
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i64 0, i64 0), i32 5) #11
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0)) #11
  br label %54

; <label>:54:                                     ; preds = %49, %3
  tail call void @exit(i32 %0) #15
  unreachable
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

declare i32 @fputs_unlocked(i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define i32 @main(i32, i8**) local_unnamed_addr #6 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.cp_options, align 8
  %5 = alloca %struct.stat, align 8
  %6 = bitcast %struct.cp_options* %4 to i8*
  call void @llvm.lifetime.start(i64 72, i8* nonnull %6) #11
  %7 = load i8*, i8** %1, align 8
  tail call void @set_program_name(i8* %7) #11
  %8 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #11
  %9 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #11
  %10 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #11
  %11 = tail call i32 @atexit(void ()* nonnull @close_stdin) #11
  call void @cp_options_default(%struct.cp_options* nonnull %4) #11
  %12 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 5
  store i8 0, i8* %12, align 4
  %13 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 34
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 1
  store i32 2, i32* %14, align 4
  %15 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 6
  store i8 0, i8* %15, align 1
  %16 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 7
  store i8 0, i8* %16, align 2
  %17 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 8
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 2
  store i32 4, i32* %18, align 8
  %19 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 9
  store i8 1, i8* %19, align 8
  %20 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 10
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 13
  store i8 0, i8* %21, align 4
  %22 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 14
  store i8 1, i8* %22, align 1
  %23 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 19
  store i8 1, i8* %23, align 2
  %24 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 15
  store i8 1, i8* %24, align 2
  %25 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 16
  store i8 1, i8* %25, align 1
  %26 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 17
  store i8 0, i8* %26, align 8
  %27 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 22
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 18
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 26
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 20
  store i8 1, i8* %30, align 1
  %31 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 21
  store i8 0, i8* %31, align 4
  %32 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 23
  store i8 0, i8* %32, align 2
  %33 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 24
  store i8 1, i8* %33, align 1
  %34 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 25
  store i8 0, i8* %34, align 8
  %35 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 27
  store i8 1, i8* %35, align 2
  %36 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 3
  store i32 2, i32* %36, align 4
  %37 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 29
  store i8 0, i8* %37, align 4
  %38 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 28
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 4
  store i32 0, i32* %39, align 8
  %40 = call i32 @isatty(i32 0) #11
  %41 = icmp ne i32 %40, 0
  %42 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 32
  %43 = zext i1 %41 to i8
  store i8 %43, i8* %42, align 1
  %44 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 33
  store i8 0, i8* %44, align 8
  %45 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 30
  store i8 0, i8* %45, align 1
  %46 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 31
  store i8 0, i8* %46, align 2
  %47 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 35
  %48 = bitcast %struct.hash_table** %47 to i8*
  call void @llvm.memset.p0i8.i64(i8* %48, i8 0, i64 16, i32 8, i1 false) #11
  %49 = bitcast %struct.stat* %5 to i8*
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 3
  br label %51

; <label>:51:                                     ; preds = %93, %2
  %52 = phi i8 [ 0, %2 ], [ %94, %93 ]
  %53 = phi i8* [ null, %2 ], [ %95, %93 ]
  %54 = phi i8* [ null, %2 ], [ %96, %93 ]
  %55 = phi i8 [ 0, %2 ], [ %97, %93 ]
  %56 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), %struct.option* getelementptr inbounds ([14 x %struct.option], [14 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11
  switch i32 %56, label %103 [
    i32 -1, label %104
    i32 98, label %57
    i32 102, label %61
    i32 105, label %62
    i32 110, label %63
    i32 128, label %64
    i32 116, label %65
    i32 84, label %93
    i32 117, label %89
    i32 118, label %90
    i32 83, label %91
    i32 90, label %98
    i32 -130, label %99
    i32 -131, label %100
  ]

; <label>:57:                                     ; preds = %51
  %58 = load i8*, i8** @optarg, align 8
  %59 = icmp eq i8* %58, null
  %60 = select i1 %59, i8* %53, i8* %58
  br label %93

; <label>:61:                                     ; preds = %51
  store i32 1, i32* %18, align 8
  br label %93

; <label>:62:                                     ; preds = %51
  store i32 3, i32* %18, align 8
  br label %93

; <label>:63:                                     ; preds = %51
  store i32 2, i32* %18, align 8
  br label %93

; <label>:64:                                     ; preds = %51
  store i1 true, i1* @remove_trailing_slashes, align 1
  br label %93

; <label>:65:                                     ; preds = %51
  %66 = icmp eq i8* %54, null
  br i1 %66, label %69, label %67

; <label>:67:                                     ; preds = %65
  %68 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %68) #11
  unreachable

; <label>:69:                                     ; preds = %65
  call void @llvm.lifetime.start(i64 144, i8* nonnull %49) #11
  %70 = load i8*, i8** @optarg, align 8
  %71 = call i32 @__xstat(i32 1, i8* nonnull %70, %struct.stat* nonnull %5) #11
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %73

; <label>:73:                                     ; preds = %69
  %74 = tail call i32* @__errno_location() #1
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 5) #11
  %77 = load i8*, i8** @optarg, align 8
  %78 = call i8* @quotearg_style(i32 4, i8* %77) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %75, i8* %76, i8* %78) #11
  unreachable

; <label>:79:                                     ; preds = %69
  %80 = load i32, i32* %50, align 8
  %81 = and i32 %80, 61440
  %82 = icmp eq i32 %81, 16384
  br i1 %82, label %87, label %83

; <label>:83:                                     ; preds = %79
  %84 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 5) #11
  %85 = load i8*, i8** @optarg, align 8
  %86 = call i8* @quotearg_style(i32 4, i8* %85) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %84, i8* %86) #11
  unreachable

; <label>:87:                                     ; preds = %79
  call void @llvm.lifetime.end(i64 144, i8* nonnull %49) #11
  %88 = load i8*, i8** @optarg, align 8
  br label %93

; <label>:89:                                     ; preds = %51
  store i8 1, i8* %45, align 1
  br label %93

; <label>:90:                                     ; preds = %51
  store i8 1, i8* %46, align 2
  br label %93

; <label>:91:                                     ; preds = %51
  %92 = load i64, i64* bitcast (i8** @optarg to i64*), align 8
  store i64 %92, i64* bitcast (i8** @simple_backup_suffix to i64*), align 8
  br label %93

; <label>:93:                                     ; preds = %91, %90, %89, %87, %64, %63, %62, %61, %98, %51, %57
  %94 = phi i8 [ %52, %98 ], [ 1, %91 ], [ %52, %90 ], [ %52, %89 ], [ %52, %87 ], [ %52, %64 ], [ %52, %63 ], [ %52, %62 ], [ %52, %61 ], [ 1, %57 ], [ %52, %51 ]
  %95 = phi i8* [ %53, %98 ], [ %53, %91 ], [ %53, %90 ], [ %53, %89 ], [ %53, %87 ], [ %53, %64 ], [ %53, %63 ], [ %53, %62 ], [ %53, %61 ], [ %60, %57 ], [ %53, %51 ]
  %96 = phi i8* [ %54, %98 ], [ %54, %91 ], [ %54, %90 ], [ %54, %89 ], [ %88, %87 ], [ %54, %64 ], [ %54, %63 ], [ %54, %62 ], [ %54, %61 ], [ %54, %57 ], [ %54, %51 ]
  %97 = phi i8 [ %55, %98 ], [ %55, %91 ], [ %55, %90 ], [ %55, %89 ], [ %55, %87 ], [ %55, %64 ], [ %55, %63 ], [ %55, %62 ], [ %55, %61 ], [ %55, %57 ], [ 1, %51 ]
  br label %51

; <label>:98:                                     ; preds = %51
  br label %93

; <label>:99:                                     ; preds = %51
  call void @usage(i32 0) #16
  unreachable

; <label>:100:                                    ; preds = %51
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %102 = load i8*, i8** @Version, align 8
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* null) #11
  call void @exit(i32 0) #15
  unreachable

; <label>:103:                                    ; preds = %51
  call void @usage(i32 1) #16
  unreachable

; <label>:104:                                    ; preds = %51
  %105 = load i32, i32* @optind, align 4
  %106 = sub nsw i32 %0, %105
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8*, i8** %1, i64 %107
  %109 = icmp ne i8* %54, null
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = icmp sgt i32 %106, %111
  br i1 %112, label %122, label %113

; <label>:113:                                    ; preds = %104
  %114 = icmp slt i32 %106, 1
  br i1 %114, label %115, label %117

; <label>:115:                                    ; preds = %113
  %116 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %116) #11
  br label %121

; <label>:117:                                    ; preds = %113
  %118 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0), i32 5) #11
  %119 = load i8*, i8** %108, align 8
  %120 = call i8* @quotearg_style(i32 4, i8* %119) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %118, i8* %120) #11
  br label %121

; <label>:121:                                    ; preds = %117, %115
  call void @usage(i32 1) #16
  unreachable

; <label>:122:                                    ; preds = %104
  %123 = icmp eq i8 %55, 0
  br i1 %123, label %134, label %124

; <label>:124:                                    ; preds = %122
  br i1 %109, label %125, label %127

; <label>:125:                                    ; preds = %124
  %126 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.22, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %126) #11
  unreachable

; <label>:127:                                    ; preds = %124
  %128 = icmp sgt i32 %106, 2
  br i1 %128, label %129, label %166

; <label>:129:                                    ; preds = %127
  %130 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i32 5) #11
  %131 = getelementptr inbounds i8*, i8** %108, i64 2
  %132 = load i8*, i8** %131, align 8
  %133 = call i8* @quotearg_style(i32 4, i8* %132) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %130, i8* %133) #11
  call void @usage(i32 1) #16
  unreachable

; <label>:134:                                    ; preds = %122
  br i1 %109, label %166, label %135

; <label>:135:                                    ; preds = %134
  %136 = icmp sgt i32 %106, 1
  br i1 %136, label %138, label %137

; <label>:137:                                    ; preds = %135
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 453, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #15
  unreachable

; <label>:138:                                    ; preds = %135
  %139 = add nsw i32 %106, -1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %108, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = bitcast %struct.stat* %3 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %143) #11
  %144 = call i32 @__xstat(i32 1, i8* nonnull %142, %struct.stat* nonnull %3) #11
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %153, label %146

; <label>:146:                                    ; preds = %138
  %147 = tail call i32* @__errno_location() #1
  %148 = load i32, i32* %147, align 4
  switch i32 %148, label %150 [
    i32 0, label %153
    i32 2, label %149
  ]

; <label>:149:                                    ; preds = %146
  call void @llvm.lifetime.end(i64 144, i8* nonnull %143) #11
  br label %160

; <label>:150:                                    ; preds = %146
  %151 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 5) #11
  %152 = call i8* @quotearg_style(i32 4, i8* %142) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %148, i8* %151, i8* %152) #11
  unreachable

; <label>:153:                                    ; preds = %138, %146
  %154 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, 61440
  %157 = icmp eq i32 %156, 16384
  call void @llvm.lifetime.end(i64 144, i8* nonnull %143) #11
  br i1 %157, label %158, label %160

; <label>:158:                                    ; preds = %153
  %159 = load i8*, i8** %141, align 8
  br label %166

; <label>:160:                                    ; preds = %149, %153
  %161 = icmp sgt i32 %106, 2
  br i1 %161, label %162, label %166

; <label>:162:                                    ; preds = %160
  %163 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 5) #11
  %164 = load i8*, i8** %141, align 8
  %165 = call i8* @quotearg_style(i32 4, i8* %164) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %163, i8* %165) #11
  unreachable

; <label>:166:                                    ; preds = %134, %160, %158, %127
  %167 = phi i8* [ null, %127 ], [ %54, %134 ], [ %159, %158 ], [ null, %160 ]
  %168 = phi i32 [ %106, %127 ], [ %106, %134 ], [ %139, %158 ], [ 2, %160 ]
  %169 = icmp eq i8 %52, 0
  br i1 %169, label %178, label %170

; <label>:170:                                    ; preds = %166
  %171 = load i32, i32* %18, align 8
  %172 = icmp eq i32 %171, 2
  br i1 %172, label %173, label %175

; <label>:173:                                    ; preds = %170
  %174 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.26, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %174) #11
  call void @usage(i32 1) #16
  unreachable

; <label>:175:                                    ; preds = %170
  %176 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i32 5) #11
  %177 = call i32 @xget_version(i8* %176, i8* %53) #11
  br label %178

; <label>:178:                                    ; preds = %166, %175
  %179 = phi i32 [ %177, %175 ], [ 0, %166 ]
  %180 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 0
  store i32 %179, i32* %180, align 8
  call void @hash_init() #11
  %181 = icmp eq i8* %167, null
  br i1 %181, label %206, label %182

; <label>:182:                                    ; preds = %178
  %183 = icmp sgt i32 %168, 1
  br i1 %183, label %184, label %185

; <label>:184:                                    ; preds = %182
  call void @dest_info_init(%struct.cp_options* nonnull %4) #11
  br label %187

; <label>:185:                                    ; preds = %182
  %186 = icmp eq i32 %168, 1
  br i1 %186, label %187, label %217

; <label>:187:                                    ; preds = %184, %185
  %188 = zext i32 %168 to i64
  br label %189

; <label>:189:                                    ; preds = %187, %197
  %190 = phi i64 [ %204, %197 ], [ 0, %187 ]
  %191 = phi i8 [ %203, %197 ], [ 1, %187 ]
  %192 = getelementptr inbounds i8*, i8** %108, i64 %190
  %193 = load i8*, i8** %192, align 8
  %194 = load i1, i1* @remove_trailing_slashes, align 1
  br i1 %194, label %195, label %197

; <label>:195:                                    ; preds = %189
  %196 = call zeroext i1 @strip_trailing_slashes(i8* %193) #11
  br label %197

; <label>:197:                                    ; preds = %189, %195
  %198 = call i8* @last_component(i8* %193) #14
  %199 = call i8* @file_name_concat(i8* nonnull %167, i8* %198, i8** null) #11
  %200 = call zeroext i1 @strip_trailing_slashes(i8* %199) #11
  %201 = call fastcc zeroext i1 @do_move(i8* %193, i8* %199, %struct.cp_options* nonnull %4) #11
  call void @free(i8* %199) #11
  %202 = zext i1 %201 to i8
  %203 = and i8 %202, %191
  %204 = add nuw nsw i64 %190, 1
  %205 = icmp eq i64 %204, %188
  br i1 %205, label %216, label %189

; <label>:206:                                    ; preds = %178
  %207 = load i8*, i8** %108, align 8
  %208 = getelementptr inbounds i8*, i8** %108, i64 1
  %209 = load i8*, i8** %208, align 8
  %210 = load i1, i1* @remove_trailing_slashes, align 1
  br i1 %210, label %211, label %213

; <label>:211:                                    ; preds = %206
  %212 = call zeroext i1 @strip_trailing_slashes(i8* %207) #11
  br label %213

; <label>:213:                                    ; preds = %206, %211
  %214 = call fastcc zeroext i1 @do_move(i8* %207, i8* %209, %struct.cp_options* nonnull %4) #11
  %215 = zext i1 %214 to i8
  br label %217

; <label>:216:                                    ; preds = %197
  br label %217

; <label>:217:                                    ; preds = %216, %185, %213
  %218 = phi i8 [ %215, %213 ], [ 1, %185 ], [ %203, %216 ]
  %219 = and i8 %218, 1
  %220 = xor i8 %219, 1
  %221 = zext i8 %220 to i32
  call void @llvm.lifetime.end(i64 72, i8* nonnull %6) #11
  ret i32 %221
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @isatty(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #7

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @do_move(i8*, i8*, %struct.cp_options*) unnamed_addr #6 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct.rm_options, align 8
  %7 = alloca [2 x i8*], align 16
  call void @llvm.lifetime.start(i64 1, i8* nonnull %4) #11
  call void @llvm.lifetime.start(i64 1, i8* nonnull %5) #11
  %8 = call zeroext i1 @copy(i8* %0, i8* %1, i1 zeroext false, %struct.cp_options* %2, i8* nonnull %4, i8* nonnull %5) #11
  %9 = zext i1 %8 to i8
  br i1 %8, label %10, label %46

; <label>:10:                                     ; preds = %3
  %11 = load i8, i8* %4, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %46

; <label>:13:                                     ; preds = %10
  %14 = load i8, i8* %5, align 1
  %15 = icmp ne i8 %14, 0
  %16 = icmp eq i8* %0, null
  %17 = or i1 %16, %15
  br i1 %17, label %46, label %18

; <label>:18:                                     ; preds = %13
  %19 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %6, i64 0, i32 0
  call void @llvm.lifetime.start(i64 32, i8* nonnull %19) #11
  %20 = bitcast [2 x i8*]* %7 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %20) #11
  store i8 0, i8* %19, align 8
  %21 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %6, i64 0, i32 4
  store i8 1, i8* %21, align 2
  %22 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %6, i64 0, i32 3
  store i8 1, i8* %22, align 1
  %23 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %6, i64 0, i32 2
  store i8 0, i8* %23, align 8
  %24 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %6, i64 0, i32 1
  store i32 5, i32* %24, align 4
  %25 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %6, i64 0, i32 6
  store i8 0, i8* %25, align 8
  %26 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %6, i64 0, i32 7
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %6, i64 0, i32 8
  store i8 1, i8* %27, align 2
  %28 = call %struct.timespec* @get_root_dev_ino(%struct.timespec* nonnull @rm_option_init.dev_ino_buf) #11
  %29 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %6, i64 0, i32 5
  store %struct.timespec* %28, %struct.timespec** %29, align 8
  %30 = icmp eq %struct.timespec* %28, null
  br i1 %30, label %31, label %36

; <label>:31:                                     ; preds = %18
  %32 = tail call i32* @__errno_location() #1
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.60, i64 0, i64 0), i32 5) #11
  %35 = call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0)) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %33, i8* %34, i8* %35) #11
  unreachable

; <label>:36:                                     ; preds = %18
  %37 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %2, i64 0, i32 31
  %38 = load i8, i8* %37, align 2
  store i8 %38, i8* %26, align 1
  %39 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  store i8* %0, i8** %39, align 16
  %40 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  store i8* null, i8** %40, align 8
  %41 = call i32 @rm(i8** nonnull %39, %struct.rm_options* nonnull %6) #11
  switch i32 %41, label %42 [
    i32 4, label %43
    i32 2, label %44
    i32 3, label %44
  ]

; <label>:42:                                     ; preds = %36
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 236, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.do_move, i64 0, i64 0)) #15
  unreachable

; <label>:43:                                     ; preds = %36
  br label %44

; <label>:44:                                     ; preds = %36, %36, %43
  %45 = phi i8 [ 0, %43 ], [ %9, %36 ], [ %9, %36 ]
  call void @llvm.lifetime.end(i64 16, i8* nonnull %20) #11
  call void @llvm.lifetime.end(i64 32, i8* nonnull %19) #11
  br label %46

; <label>:46:                                     ; preds = %13, %10, %44, %3
  %47 = phi i8 [ %9, %3 ], [ %45, %44 ], [ %9, %13 ], [ 0, %10 ]
  %48 = and i8 %47, 1
  %49 = icmp ne i8 %48, 0
  call void @llvm.lifetime.end(i64 1, i8* nonnull %5) #11
  call void @llvm.lifetime.end(i64 1, i8* nonnull %4) #11
  ret i1 %49
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define i32 @rm(i8**, %struct.rm_options* nocapture readonly) local_unnamed_addr #6 {
  %3 = alloca i32, align 4
  %4 = load i8*, i8** %0, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %258, label %6

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %1, i64 0, i32 2
  %8 = load i8, i8* %7, align 8
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, i32 536, i32 600
  %11 = tail call %struct.FTS* @xfts_open(i8** nonnull %0, i32 %10, i32 (%struct._ftsent**, %struct._ftsent**)* null) #11
  %12 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %1, i64 0, i32 3
  %13 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %1, i64 0, i32 4
  %14 = getelementptr inbounds %struct.FTS, %struct.FTS* %11, i64 0, i32 6
  %15 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %1, i64 0, i32 5
  %16 = bitcast i32* %3 to i8*
  %17 = getelementptr inbounds %struct.FTS, %struct.FTS* %11, i64 0, i32 3
  br label %20

; <label>:18:                                     ; preds = %248, %245
  %19 = phi i32 [ 3, %248 ], [ 4, %245 ]
  br label %78

; <label>:20:                                     ; preds = %78, %6
  %21 = phi i32 [ 2, %6 ], [ %79, %78 ]
  %22 = icmp eq i32 %21, 2
  br label %23

; <label>:23:                                     ; preds = %20, %248
  %24 = call %struct._ftsent* @fts_read(%struct.FTS* %11) #11
  %25 = icmp eq %struct._ftsent* %24, null
  br i1 %25, label %26, label %32

; <label>:26:                                     ; preds = %23
  %27 = tail call i32* @__errno_location() #1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %251, label %30

; <label>:30:                                     ; preds = %26
  %31 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %28, i8* %31) #11
  br label %251

; <label>:32:                                     ; preds = %23
  %33 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %24, i64 0, i32 15
  %34 = load i16, i16* %33, align 8
  switch i16 %34, label %238 [
    i16 1, label %35
    i16 7, label %229
    i16 2, label %222
    i16 6, label %179
    i16 3, label %215
    i16 4, label %215
    i16 8, label %215
    i16 10, label %215
    i16 11, label %215
    i16 12, label %215
    i16 13, label %215
  ]

; <label>:35:                                     ; preds = %32
  %36 = load i8, i8* %12, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %80

; <label>:38:                                     ; preds = %35
  %39 = load i8, i8* %13, align 2
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %50, label %41

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* %14, align 4
  %43 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %24, i64 0, i32 6
  %44 = load i8*, i8** %43, align 8
  %45 = call fastcc zeroext i1 @is_empty_dir(i32 %42, i8* %44) #11
  br i1 %45, label %80, label %46

; <label>:46:                                     ; preds = %41
  %47 = load i8, i8* %13, align 2
  %48 = icmp ne i8 %47, 0
  %49 = select i1 %48, i32 39, i32 21
  br label %51

; <label>:50:                                     ; preds = %38
  br label %51

; <label>:51:                                     ; preds = %50, %46
  %52 = phi i32 [ %49, %46 ], [ 21, %50 ]
  %53 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.32, i64 0, i64 0), i32 5) #11
  %54 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %24, i64 0, i32 7
  %55 = load i8*, i8** %54, align 8
  %56 = call i8* @quotearg_style(i32 4, i8* %55) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %52, i8* %53, i8* %56) #11
  %57 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %24, i64 0, i32 1
  %58 = load %struct._ftsent*, %struct._ftsent** %57, align 8
  %59 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %58, i64 0, i32 12
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %60, -1
  br i1 %61, label %62, label %75

; <label>:62:                                     ; preds = %51
  br label %63

; <label>:63:                                     ; preds = %62, %68
  %64 = phi %struct._ftsent* [ %70, %68 ], [ %58, %62 ]
  %65 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %64, i64 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %74

; <label>:68:                                     ; preds = %63
  store i64 1, i64* %65, align 8
  %69 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %64, i64 0, i32 1
  %70 = load %struct._ftsent*, %struct._ftsent** %69, align 8
  %71 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %70, i64 0, i32 12
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %72, -1
  br i1 %73, label %63, label %74

; <label>:74:                                     ; preds = %63, %68
  br label %75

; <label>:75:                                     ; preds = %74, %51
  %76 = call i32 @fts_set(%struct.FTS* %11, %struct._ftsent* %24, i32 4) #11
  %77 = call %struct._ftsent* @fts_read(%struct.FTS* %11) #11
  br label %78

; <label>:78:                                     ; preds = %75, %139, %97, %210, %222, %229, %18
  %79 = phi i32 [ 4, %229 ], [ 4, %222 ], [ 4, %210 ], [ 4, %97 ], [ 4, %139 ], [ 4, %75 ], [ %19, %18 ]
  br label %20

; <label>:80:                                     ; preds = %41, %35
  %81 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %24, i64 0, i32 12
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %143

; <label>:84:                                     ; preds = %80
  %85 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %24, i64 0, i32 6
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @last_component(i8* %86) #14
  %88 = load i8, i8* %87, align 1
  %89 = icmp eq i8 %88, 46
  br i1 %89, label %90, label %106

; <label>:90:                                     ; preds = %84
  %91 = getelementptr inbounds i8, i8* %87, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = icmp eq i8 %92, 46
  %94 = select i1 %93, i64 2, i64 1
  %95 = getelementptr inbounds i8, i8* %87, i64 %94
  %96 = load i8, i8* %95, align 1
  switch i8 %96, label %106 [
    i8 47, label %97
    i8 0, label %97
  ]

; <label>:97:                                     ; preds = %90, %90
  %98 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5.33, i64 0, i64 0), i32 5) #11
  %99 = call i8* @quotearg_n_style(i32 0, i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.34, i64 0, i64 0)) #11
  %100 = call i8* @quotearg_n_style(i32 1, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.35, i64 0, i64 0)) #11
  %101 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %24, i64 0, i32 7
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @quotearg_n_style(i32 2, i32 4, i8* %102) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %98, i8* %99, i8* %100, i8* %103) #11
  %104 = call i32 @fts_set(%struct.FTS* %11, %struct._ftsent* nonnull %24, i32 4) #11
  %105 = call %struct._ftsent* @fts_read(%struct.FTS* %11) #11
  br label %78

; <label>:106:                                    ; preds = %90, %84
  %107 = load %struct.timespec*, %struct.timespec** %15, align 8
  %108 = icmp eq %struct.timespec* %107, null
  br i1 %108, label %143, label %109

; <label>:109:                                    ; preds = %106
  %110 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %24, i64 0, i32 18, i64 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.timespec, %struct.timespec* %107, i64 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %111, %113
  br i1 %114, label %115, label %143

; <label>:115:                                    ; preds = %109
  %116 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %24, i64 0, i32 18, i64 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.timespec, %struct.timespec* %107, i64 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %117, %119
  br i1 %120, label %121, label %143

; <label>:121:                                    ; preds = %115
  %122 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %24, i64 0, i32 7
  %123 = load i8*, i8** %122, align 8
  %124 = load i8, i8* %123, align 1
  %125 = icmp eq i8 %124, 47
  br i1 %125, label %126, label %134

; <label>:126:                                    ; preds = %121
  %127 = getelementptr inbounds i8, i8* %123, i64 1
  %128 = load i8, i8* %127, align 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %134

; <label>:130:                                    ; preds = %126
  %131 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9.36, i64 0, i64 0), i32 5) #11
  %132 = load i8*, i8** %122, align 8
  %133 = call i8* @quotearg_style(i32 4, i8* %132) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %131, i8* %133) #11
  br label %139

; <label>:134:                                    ; preds = %126, %121
  %135 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10.37, i64 0, i64 0), i32 5) #11
  %136 = load i8*, i8** %122, align 8
  %137 = call i8* @quotearg_n_style(i32 0, i32 4, i8* %136) #11
  %138 = call i8* @quotearg_n_style(i32 1, i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.38, i64 0, i64 0)) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %135, i8* %137, i8* %138) #11
  br label %139

; <label>:139:                                    ; preds = %134, %130
  %140 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11.39, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %140) #11
  %141 = call i32 @fts_set(%struct.FTS* %11, %struct._ftsent* nonnull %24, i32 4) #11
  %142 = call %struct._ftsent* @fts_read(%struct.FTS* %11) #11
  br label %78

; <label>:143:                                    ; preds = %115, %109, %106, %80
  call void @llvm.lifetime.start(i64 4, i8* nonnull %16) #11
  %144 = call fastcc i32 @prompt(%struct.FTS* %11, %struct._ftsent* nonnull %24, i1 zeroext true, %struct.rm_options* nonnull %1, i32 2, i32* nonnull %3) #11
  %145 = icmp eq i32 %144, 2
  %146 = load i32, i32* %3, align 4
  %147 = icmp eq i32 %146, 4
  %148 = and i1 %145, %147
  br i1 %148, label %149, label %153

; <label>:149:                                    ; preds = %143
  %150 = call fastcc i32 @excise(%struct.FTS* %11, %struct._ftsent* nonnull %24, %struct.rm_options* nonnull %1, i1 zeroext true) #11
  %151 = call i32 @fts_set(%struct.FTS* %11, %struct._ftsent* nonnull %24, i32 4) #11
  %152 = call %struct._ftsent* @fts_read(%struct.FTS* %11) #11
  br label %153

; <label>:153:                                    ; preds = %149, %143
  %154 = phi i32 [ %150, %149 ], [ %144, %143 ]
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %178, label %156

; <label>:156:                                    ; preds = %153
  %157 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %24, i64 0, i32 1
  %158 = load %struct._ftsent*, %struct._ftsent** %157, align 8
  %159 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %158, i64 0, i32 12
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %160, -1
  br i1 %161, label %162, label %175

; <label>:162:                                    ; preds = %156
  br label %163

; <label>:163:                                    ; preds = %162, %168
  %164 = phi %struct._ftsent* [ %170, %168 ], [ %158, %162 ]
  %165 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %164, i64 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %174

; <label>:168:                                    ; preds = %163
  store i64 1, i64* %165, align 8
  %169 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %164, i64 0, i32 1
  %170 = load %struct._ftsent*, %struct._ftsent** %169, align 8
  %171 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %170, i64 0, i32 12
  %172 = load i64, i64* %171, align 8
  %173 = icmp sgt i64 %172, -1
  br i1 %173, label %163, label %174

; <label>:174:                                    ; preds = %163, %168
  br label %175

; <label>:175:                                    ; preds = %174, %156
  %176 = call i32 @fts_set(%struct.FTS* %11, %struct._ftsent* %24, i32 4) #11
  %177 = call %struct._ftsent* @fts_read(%struct.FTS* %11) #11
  br label %178

; <label>:178:                                    ; preds = %175, %153
  call void @llvm.lifetime.end(i64 4, i8* nonnull %16) #11
  br label %245

; <label>:179:                                    ; preds = %32
  %180 = load i8, i8* %7, align 8
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %215, label %182

; <label>:182:                                    ; preds = %179
  %183 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %24, i64 0, i32 12
  %184 = load i64, i64* %183, align 8
  %185 = icmp sgt i64 %184, 0
  br i1 %185, label %186, label %215

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %24, i64 0, i32 18, i64 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* %17, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %215, label %191

; <label>:191:                                    ; preds = %186
  %192 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %24, i64 0, i32 1
  %193 = load %struct._ftsent*, %struct._ftsent** %192, align 8
  %194 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %193, i64 0, i32 12
  %195 = load i64, i64* %194, align 8
  %196 = icmp sgt i64 %195, -1
  br i1 %196, label %197, label %210

; <label>:197:                                    ; preds = %191
  br label %198

; <label>:198:                                    ; preds = %197, %203
  %199 = phi %struct._ftsent* [ %205, %203 ], [ %193, %197 ]
  %200 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %199, i64 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %209

; <label>:203:                                    ; preds = %198
  store i64 1, i64* %200, align 8
  %204 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %199, i64 0, i32 1
  %205 = load %struct._ftsent*, %struct._ftsent** %204, align 8
  %206 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %205, i64 0, i32 12
  %207 = load i64, i64* %206, align 8
  %208 = icmp sgt i64 %207, -1
  br i1 %208, label %198, label %209

; <label>:209:                                    ; preds = %198, %203
  br label %210

; <label>:210:                                    ; preds = %209, %191
  %211 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12.40, i64 0, i64 0), i32 5) #11
  %212 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %24, i64 0, i32 7
  %213 = load i8*, i8** %212, align 8
  %214 = call i8* @quotearg_style(i32 4, i8* %213) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %211, i8* %214) #11
  br label %78

; <label>:215:                                    ; preds = %186, %182, %179, %32, %32, %32, %32, %32, %32, %32
  %216 = or i16 %34, 2
  %217 = icmp eq i16 %216, 6
  %218 = call fastcc i32 @prompt(%struct.FTS* %11, %struct._ftsent* nonnull %24, i1 zeroext %217, %struct.rm_options* %1, i32 3, i32* null) #11
  %219 = icmp eq i32 %218, 2
  br i1 %219, label %220, label %245

; <label>:220:                                    ; preds = %215
  %221 = call fastcc i32 @excise(%struct.FTS* %11, %struct._ftsent* nonnull %24, %struct.rm_options* %1, i1 zeroext %217) #11
  br label %245

; <label>:222:                                    ; preds = %32
  %223 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.13.41, i64 0, i64 0), i32 5) #11
  %224 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %24, i64 0, i32 7
  %225 = load i8*, i8** %224, align 8
  %226 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %225) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %223, i8* %226) #11
  %227 = call i32 @fts_set(%struct.FTS* %11, %struct._ftsent* nonnull %24, i32 4) #11
  %228 = call %struct._ftsent* @fts_read(%struct.FTS* %11) #11
  br label %78

; <label>:229:                                    ; preds = %32
  %230 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %24, i64 0, i32 8
  %231 = load i32, i32* %230, align 8
  %232 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.42, i64 0, i64 0), i32 5) #11
  %233 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %24, i64 0, i32 7
  %234 = load i8*, i8** %233, align 8
  %235 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %234) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %231, i8* %232, i8* %235) #11
  %236 = call i32 @fts_set(%struct.FTS* %11, %struct._ftsent* nonnull %24, i32 4) #11
  %237 = call %struct._ftsent* @fts_read(%struct.FTS* %11) #11
  br label %78

; <label>:238:                                    ; preds = %32
  %239 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.15.43, i64 0, i64 0), i32 5) #11
  %240 = load i16, i16* %33, align 8
  %241 = zext i16 %240 to i32
  %242 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %24, i64 0, i32 7
  %243 = load i8*, i8** %242, align 8
  %244 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %243) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %239, i32 %241, i8* %244, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16.44, i64 0, i64 0)) #11
  call void @abort() #15
  unreachable

; <label>:245:                                    ; preds = %178, %215, %220
  %246 = phi i32 [ %154, %178 ], [ %221, %220 ], [ %218, %215 ]
  switch i32 %246, label %247 [
    i32 4, label %18
    i32 2, label %248
    i32 3, label %248
  ]

; <label>:247:                                    ; preds = %245
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.45, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.46, i64 0, i64 0), i32 574, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.rm, i64 0, i64 0)) #15
  unreachable

; <label>:248:                                    ; preds = %245, %245
  %249 = icmp eq i32 %246, 3
  %250 = and i1 %22, %249
  br i1 %250, label %18, label %23

; <label>:251:                                    ; preds = %26, %30
  %252 = phi i32 [ 4, %30 ], [ %21, %26 ]
  %253 = call i32 @fts_close(%struct.FTS* %11) #11
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %258, label %255

; <label>:255:                                    ; preds = %251
  %256 = load i32, i32* %27, align 4
  %257 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3.47, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %256, i8* %257) #11
  br label %258

; <label>:258:                                    ; preds = %255, %251, %2
  %259 = phi i32 [ 2, %2 ], [ 4, %255 ], [ %252, %251 ]
  ret i32 %259
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc zeroext i1 @is_empty_dir(i32, i8*) unnamed_addr #9 {
  %3 = tail call i32 (i32, i8*, i32, ...) @openat(i32 %0, i8* %1, i32 198912) #11
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %48, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.__dirstream* @fdopendir(i32 %3) #11
  %7 = icmp eq %struct.__dirstream* %6, null
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @close(i32 %3) #11
  br label %48

; <label>:10:                                     ; preds = %5
  %11 = tail call i32* @__errno_location() #1
  store i32 0, i32* %11, align 4
  %12 = tail call %struct.dirent* @readdir(%struct.__dirstream* nonnull %6) #11
  %13 = icmp eq %struct.dirent* %12, null
  br i1 %13, label %38, label %14

; <label>:14:                                     ; preds = %10
  br label %15

; <label>:15:                                     ; preds = %14, %34
  %16 = phi %struct.dirent* [ %35, %34 ], [ %12, %14 ]
  %17 = phi %struct.dirent* [ %33, %34 ], [ undef, %14 ]
  %18 = getelementptr inbounds %struct.dirent, %struct.dirent* %16, i64 0, i32 4, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = icmp eq i8 %19, 46
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %15
  %22 = tail call i32 @closedir(%struct.__dirstream* nonnull %6)
  br label %48

; <label>:23:                                     ; preds = %15
  %24 = getelementptr inbounds %struct.dirent, %struct.dirent* %16, i64 0, i32 4, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = icmp eq i8 %25, 46
  %27 = select i1 %26, i64 2, i64 1
  %28 = getelementptr inbounds %struct.dirent, %struct.dirent* %16, i64 0, i32 4, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = icmp eq i8 %29, 0
  %31 = icmp eq i8 %29, 47
  %32 = or i1 %30, %31
  %33 = select i1 %32, %struct.dirent* %17, %struct.dirent* %16
  switch i8 %29, label %41 [
    i8 47, label %34
    i8 0, label %34
  ]

; <label>:34:                                     ; preds = %23, %23
  %35 = tail call %struct.dirent* @readdir(%struct.__dirstream* nonnull %6) #11
  %36 = icmp eq %struct.dirent* %35, null
  br i1 %36, label %37, label %15

; <label>:37:                                     ; preds = %34
  br label %38

; <label>:38:                                     ; preds = %37, %10
  %39 = load i32, i32* %11, align 4
  %40 = tail call i32 @closedir(%struct.__dirstream* nonnull %6)
  br label %45

; <label>:41:                                     ; preds = %23
  %42 = load i32, i32* %11, align 4
  %43 = tail call i32 @closedir(%struct.__dirstream* nonnull %6)
  %44 = icmp eq %struct.dirent* %33, null
  br i1 %44, label %45, label %48

; <label>:45:                                     ; preds = %38, %41
  %46 = phi i32 [ %39, %38 ], [ %42, %41 ]
  %47 = icmp eq i32 %46, 0
  br label %48

; <label>:48:                                     ; preds = %21, %41, %2, %45, %8
  %49 = phi i1 [ false, %8 ], [ %47, %45 ], [ false, %2 ], [ false, %41 ], [ false, %21 ]
  ret i1 %49
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @prompt(%struct.FTS* nocapture readonly, %struct._ftsent* nocapture readonly, i1 zeroext, %struct.rm_options* nocapture readonly, i32, i32*) unnamed_addr #6 {
  %7 = alloca %struct.stat, align 8
  %8 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 7
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 6
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i32* %5, null
  br i1 %14, label %15, label %19

; <label>:15:                                     ; preds = %6
  %16 = bitcast %struct.stat* %7 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %16) #11
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 8
  store i64 -1, i64* %17, align 8
  %18 = select i1 %2, i32 4, i32 0
  br label %25

; <label>:19:                                     ; preds = %6
  store i32 2, i32* %5, align 4
  %20 = bitcast %struct.stat* %7 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %20) #11
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 8
  store i64 -1, i64* %21, align 8
  %22 = select i1 %2, i32 4, i32 0
  %23 = tail call fastcc zeroext i1 @is_empty_dir(i32 %9, i8* %13)
  %24 = select i1 %23, i32 4, i32 3
  store i32 %24, i32* %5, align 4
  br label %25

; <label>:25:                                     ; preds = %15, %19
  %26 = phi i32 [ %22, %19 ], [ %18, %15 ]
  %27 = phi i64* [ %21, %19 ], [ %17, %15 ]
  %28 = phi i8* [ %20, %19 ], [ %16, %15 ]
  %29 = phi i1 [ %23, %19 ], [ false, %15 ]
  %30 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %205

; <label>:33:                                     ; preds = %25
  %34 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %3, i64 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 5
  br i1 %36, label %205, label %37

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %3, i64 0, i32 0
  %39 = load i8, i8* %38, align 8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %94

; <label>:41:                                     ; preds = %37
  %42 = icmp eq i32 %35, 3
  br i1 %42, label %47, label %43

; <label>:43:                                     ; preds = %41
  %44 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %3, i64 0, i32 6
  %45 = load i8, i8* %44, align 8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %94, label %47

; <label>:47:                                     ; preds = %41, %43
  %48 = tail call zeroext i1 @can_write_any_file() #11
  br i1 %48, label %86, label %49

; <label>:49:                                     ; preds = %47
  %50 = load i64, i64* %27, align 8
  %51 = icmp eq i64 %50, -1
  br i1 %51, label %52, label %62

; <label>:52:                                     ; preds = %49
  %53 = call i32 @__fxstatat(i32 1, i32 %9, i8* nonnull %13, %struct.stat* nonnull %7, i32 256) #11
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

; <label>:55:                                     ; preds = %52
  %56 = load i64, i64* %27, align 8
  br label %62

; <label>:57:                                     ; preds = %52
  store i64 -2, i64* %27, align 8
  %58 = tail call i32* @__errno_location() #1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1
  store i64 %60, i64* %61, align 8
  br label %69

; <label>:62:                                     ; preds = %55, %49
  %63 = phi i64 [ %50, %49 ], [ %56, %55 ]
  %64 = icmp sgt i64 %63, -1
  br i1 %64, label %73, label %65

; <label>:65:                                     ; preds = %62
  %66 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = tail call i32* @__errno_location() #1
  br label %69

; <label>:69:                                     ; preds = %65, %57
  %70 = phi i32* [ %68, %65 ], [ %58, %57 ]
  %71 = phi i64 [ %67, %65 ], [ %60, %57 ]
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %70, align 4
  br label %90

; <label>:73:                                     ; preds = %62
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, 61440
  %77 = icmp eq i32 %76, 40960
  br i1 %77, label %86, label %78

; <label>:78:                                     ; preds = %73
  %79 = call i32 @faccessat(i32 %9, i8* %13, i32 2, i32 512) #11
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %81

; <label>:81:                                     ; preds = %78
  %82 = tail call i32* @__errno_location() #1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 13
  %85 = select i1 %84, i32 1, i32 -1
  br label %90

; <label>:86:                                     ; preds = %47, %73, %78
  %87 = tail call i32* @__errno_location() #1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %34, align 4
  br label %94

; <label>:90:                                     ; preds = %81, %69
  %91 = phi i32* [ %82, %81 ], [ %70, %69 ]
  %92 = phi i32 [ %85, %81 ], [ -1, %69 ]
  %93 = load i32, i32* %91, align 4
  br label %98

; <label>:94:                                     ; preds = %43, %37, %86
  %95 = phi i32 [ %89, %86 ], [ %35, %37 ], [ %35, %43 ]
  %96 = phi i32 [ %88, %86 ], [ 0, %37 ], [ 0, %43 ]
  %97 = icmp eq i32 %95, 3
  br i1 %97, label %98, label %204

; <label>:98:                                     ; preds = %90, %94
  %99 = phi i32 [ %96, %94 ], [ %93, %90 ]
  %100 = phi i32 [ 0, %94 ], [ %92, %90 ]
  %101 = icmp sgt i32 %100, -1
  %102 = xor i1 %2, true
  %103 = and i1 %101, %102
  br i1 %103, label %104, label %135

; <label>:104:                                    ; preds = %98
  %105 = load i64, i64* %27, align 8
  %106 = icmp eq i64 %105, -1
  br i1 %106, label %107, label %117

; <label>:107:                                    ; preds = %104
  %108 = call i32 @__fxstatat(i32 1, i32 %9, i8* nonnull %13, %struct.stat* nonnull %7, i32 256) #11
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

; <label>:110:                                    ; preds = %107
  %111 = load i64, i64* %27, align 8
  br label %117

; <label>:112:                                    ; preds = %107
  store i64 -2, i64* %27, align 8
  %113 = tail call i32* @__errno_location() #1
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1
  store i64 %115, i64* %116, align 8
  br label %130

; <label>:117:                                    ; preds = %110, %104
  %118 = phi i64 [ %105, %104 ], [ %111, %110 ]
  %119 = icmp sgt i64 %118, -1
  br i1 %119, label %124, label %120

; <label>:120:                                    ; preds = %117
  %121 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = tail call i32* @__errno_location() #1
  br label %130

; <label>:124:                                    ; preds = %117
  %125 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = trunc i32 %126 to i16
  %128 = and i16 %127, -4096
  switch i16 %128, label %134 [
    i16 -24576, label %136
    i16 16384, label %129
  ]

; <label>:129:                                    ; preds = %124
  br label %136

; <label>:130:                                    ; preds = %120, %112
  %131 = phi i32* [ %123, %120 ], [ %113, %112 ]
  %132 = phi i64 [ %122, %120 ], [ %115, %112 ]
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %131, align 4
  br label %152

; <label>:134:                                    ; preds = %124
  br label %136

; <label>:135:                                    ; preds = %98
  br i1 %101, label %136, label %152

; <label>:136:                                    ; preds = %134, %124, %129, %135
  %137 = phi i32 [ %26, %135 ], [ %26, %134 ], [ 10, %124 ], [ 4, %129 ]
  %138 = trunc i32 %137 to i4
  switch i4 %138, label %156 [
    i4 -6, label %139
    i4 4, label %142
  ]

; <label>:139:                                    ; preds = %136
  %140 = load i32, i32* %34, align 4
  %141 = icmp eq i32 %140, 3
  br i1 %141, label %156, label %205

; <label>:142:                                    ; preds = %136
  %143 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %3, i64 0, i32 3
  %144 = load i8, i8* %143, align 1
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %146, label %156

; <label>:146:                                    ; preds = %142
  %147 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %3, i64 0, i32 4
  %148 = load i8, i8* %147, align 2
  %149 = icmp eq i8 %148, 0
  %150 = xor i1 %29, true
  %151 = or i1 %149, %150
  br i1 %151, label %152, label %156

; <label>:152:                                    ; preds = %146, %135, %130
  %153 = phi i32 [ %99, %135 ], [ %133, %130 ], [ 21, %146 ]
  %154 = call i8* @quotearg_style(i32 4, i8* %11) #11
  %155 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.32, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %153, i8* %155, i8* %154) #11
  br label %205

; <label>:156:                                    ; preds = %136, %142, %139, %146
  %157 = call i8* @quotearg_style(i32 4, i8* %11) #11
  %158 = icmp ne i32 %137, 4
  %159 = icmp ne i32 %4, 2
  %160 = or i1 %159, %158
  %161 = or i1 %29, %160
  br i1 %161, label %169, label %162

; <label>:162:                                    ; preds = %156
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %164 = icmp ne i32 %100, 0
  %165 = select i1 %164, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17.50, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18.51, i64 0, i64 0)
  %166 = call i8* @dcgettext(i8* null, i8* %165, i32 5) #11
  %167 = load i8*, i8** @program_name, align 8
  %168 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %163, i32 1, i8* %166, i8* %167, i8* %157) #11
  br label %202

; <label>:169:                                    ; preds = %156
  %170 = load i64, i64* %27, align 8
  %171 = icmp eq i64 %170, -1
  br i1 %171, label %172, label %182

; <label>:172:                                    ; preds = %169
  %173 = call i32 @__fxstatat(i32 1, i32 %9, i8* nonnull %13, %struct.stat* nonnull %7, i32 256) #11
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %177

; <label>:175:                                    ; preds = %172
  %176 = load i64, i64* %27, align 8
  br label %182

; <label>:177:                                    ; preds = %172
  store i64 -2, i64* %27, align 8
  %178 = tail call i32* @__errno_location() #1
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1
  store i64 %180, i64* %181, align 8
  br label %189

; <label>:182:                                    ; preds = %175, %169
  %183 = phi i64 [ %170, %169 ], [ %176, %175 ]
  %184 = icmp sgt i64 %183, -1
  br i1 %184, label %194, label %185

; <label>:185:                                    ; preds = %182
  %186 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = tail call i32* @__errno_location() #1
  br label %189

; <label>:189:                                    ; preds = %185, %177
  %190 = phi i32* [ %188, %185 ], [ %178, %177 ]
  %191 = phi i64 [ %187, %185 ], [ %180, %177 ]
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %190, align 4
  %193 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.32, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %192, i8* %193, i8* %157) #11
  br label %205

; <label>:194:                                    ; preds = %182
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %196 = icmp ne i32 %100, 0
  %197 = select i1 %196, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19.52, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20.53, i64 0, i64 0)
  %198 = call i8* @dcgettext(i8* null, i8* %197, i32 5) #11
  %199 = load i8*, i8** @program_name, align 8
  %200 = call i8* @file_type(%struct.stat* nonnull %7) #14
  %201 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %195, i32 1, i8* %198, i8* %199, i8* %200, i8* %157) #11
  br label %202

; <label>:202:                                    ; preds = %162, %194
  %203 = call zeroext i1 @yesno() #11
  br i1 %203, label %204, label %205

; <label>:204:                                    ; preds = %202, %94
  br label %205

; <label>:205:                                    ; preds = %189, %152, %204, %202, %139, %33, %25
  %206 = phi i32 [ 3, %25 ], [ 2, %33 ], [ 2, %204 ], [ 3, %202 ], [ 2, %139 ], [ 4, %152 ], [ 4, %189 ]
  call void @llvm.lifetime.end(i64 144, i8* %28) #11
  ret i32 %206
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @excise(%struct.FTS* nocapture readonly, %struct._ftsent* nocapture readonly, %struct.rm_options* nocapture readonly, i1 zeroext) unnamed_addr #6 {
  %5 = alloca %struct.stat, align 8
  %6 = select i1 %3, i32 512, i32 0
  %7 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 6
  %10 = load i8*, i8** %9, align 8
  %11 = tail call i32 @unlinkat(i32 %8, i8* %10, i32 %6) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24

; <label>:13:                                     ; preds = %4
  %14 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %2, i64 0, i32 7
  %15 = load i8, i8* %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %79, label %17

; <label>:17:                                     ; preds = %13
  %18 = select i1 %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21.48, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22.49, i64 0, i64 0)
  %19 = tail call i8* @dcgettext(i8* null, i8* %18, i32 5) #11
  %20 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 7
  %21 = load i8*, i8** %20, align 8
  %22 = tail call i8* @quotearg_style(i32 4, i8* %21) #11
  %23 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %19, i8* %22) #11
  br label %79

; <label>:24:                                     ; preds = %4
  %25 = tail call i32* @__errno_location() #1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 30
  br i1 %27, label %28, label %40

; <label>:28:                                     ; preds = %24
  %29 = bitcast %struct.stat* %5 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %29) #11
  %30 = load i32, i32* %7, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @__fxstatat(i32 1, i32 %30, i8* nonnull %31, %struct.stat* nonnull %5, i32 256) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

; <label>:34:                                     ; preds = %28
  %35 = load i32, i32* %25, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %38, label %37

; <label>:37:                                     ; preds = %28, %34
  store i32 30, i32* %25, align 4
  br label %38

; <label>:38:                                     ; preds = %37, %34
  call void @llvm.lifetime.end(i64 144, i8* nonnull %29) #11
  %39 = load i32, i32* %25, align 4
  br label %40

; <label>:40:                                     ; preds = %38, %24
  %41 = phi i32 [ %39, %38 ], [ %26, %24 ]
  %42 = getelementptr inbounds %struct.rm_options, %struct.rm_options* %2, i64 0, i32 0
  %43 = load i8, i8* %42, align 8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %46, label %45

; <label>:45:                                     ; preds = %40
  switch i32 %41, label %46 [
    i32 84, label %79
    i32 22, label %79
    i32 2, label %79
    i32 20, label %79
  ]

; <label>:46:                                     ; preds = %45, %40
  %47 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 15
  %48 = load i16, i16* %47, align 8
  %49 = icmp eq i16 %48, 4
  br i1 %49, label %50, label %55

; <label>:50:                                     ; preds = %46
  switch i32 %41, label %55 [
    i32 39, label %51
    i32 21, label %51
    i32 20, label %51
    i32 17, label %51
  ]

; <label>:51:                                     ; preds = %50, %50, %50, %50
  %52 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 8
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %55 [
    i32 1, label %54
    i32 13, label %54
  ]

; <label>:54:                                     ; preds = %51, %51
  store i32 %53, i32* %25, align 4
  br label %55

; <label>:55:                                     ; preds = %51, %50, %54, %46
  %56 = phi i32 [ %41, %51 ], [ %41, %50 ], [ %53, %54 ], [ %41, %46 ]
  %57 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.32, i64 0, i64 0), i32 5) #11
  %58 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 7
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* @quotearg_style(i32 4, i8* %59) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %56, i8* %57, i8* %60) #11
  %61 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 1
  %62 = load %struct._ftsent*, %struct._ftsent** %61, align 8
  %63 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %62, i64 0, i32 12
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %64, -1
  br i1 %65, label %66, label %79

; <label>:66:                                     ; preds = %55
  br label %67

; <label>:67:                                     ; preds = %66, %72
  %68 = phi %struct._ftsent* [ %74, %72 ], [ %62, %66 ]
  %69 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %68, i64 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %78

; <label>:72:                                     ; preds = %67
  store i64 1, i64* %69, align 8
  %73 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %68, i64 0, i32 1
  %74 = load %struct._ftsent*, %struct._ftsent** %73, align 8
  %75 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %74, i64 0, i32 12
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %76, -1
  br i1 %77, label %67, label %78

; <label>:78:                                     ; preds = %67, %72
  br label %79

; <label>:79:                                     ; preds = %78, %55, %45, %45, %45, %45, %17, %13
  %80 = phi i32 [ 2, %13 ], [ 2, %17 ], [ 2, %45 ], [ 2, %45 ], [ 2, %45 ], [ 2, %45 ], [ 4, %55 ], [ 4, %78 ]
  ret i32 %80
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @unlinkat(i32, i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @faccessat(i32, i8*, i32, i32) local_unnamed_addr #2

declare i32 @openat(i32, i8*, i32, ...) local_unnamed_addr #3

declare %struct.__dirstream* @fdopendir(i32) local_unnamed_addr #3

declare i32 @close(i32) local_unnamed_addr #3

declare %struct.dirent* @readdir(%struct.__dirstream*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @closedir(%struct.__dirstream* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @set_process_security_ctx(i8*, i8*, i32, i1 zeroext, %struct.cp_options* nocapture readonly) local_unnamed_addr #6 {
  %6 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 22
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %27, label %9

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 20
  %11 = load i8, i8* %10, align 1
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 23
  br i1 %12, label %19, label %14

; <label>:14:                                     ; preds = %9
  %15 = load i8, i8* %13, align 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %14
  %18 = tail call i32* @__errno_location() #1
  store i32 95, i32* %18, align 4
  br label %25

; <label>:19:                                     ; preds = %9, %14
  %20 = tail call i32* @__errno_location() #1
  store i32 95, i32* %20, align 4
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.54, i64 0, i64 0), i32 5) #11
  %22 = tail call i8* @quotearg_style(i32 4, i8* %0) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 95, i8* %21, i8* %22) #11
  %23 = load i8, i8* %13, align 2
  %24 = icmp eq i8 %23, 0
  br label %25

; <label>:25:                                     ; preds = %27, %33, %17, %19
  %26 = phi i1 [ true, %17 ], [ %24, %19 ], [ true, %33 ], [ true, %27 ]
  ret i1 %26

; <label>:27:                                     ; preds = %5
  %28 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %4, i64 0, i32 18
  %29 = load i8, i8* %28, align 1
  %30 = icmp eq i8 %29, 0
  %31 = xor i1 %3, true
  %32 = or i1 %30, %31
  br i1 %32, label %25, label %33

; <label>:33:                                     ; preds = %27
  %34 = tail call i32* @__errno_location() #1
  store i32 95, i32* %34, align 4
  br label %25
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @set_file_security_ctx(i8*, i1 zeroext, i1 zeroext, %struct.cp_options* nocapture readonly) local_unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %3, i64 0, i32 20
  %6 = load i8, i8* %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %14, label %8

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %3, i64 0, i32 23
  %10 = load i8, i8* %9, align 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %8
  %13 = tail call i32* @__errno_location() #1
  store i32 95, i32* %13, align 4
  br label %18

; <label>:14:                                     ; preds = %8, %4
  %15 = tail call i32* @__errno_location() #1
  store i32 95, i32* %15, align 4
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3.55, i64 0, i64 0), i32 5) #11
  %17 = tail call i8* @quotearg_n_style(i32 0, i32 4, i8* %0) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 95, i8* %16, i8* %17) #11
  br label %18

; <label>:18:                                     ; preds = %12, %14
  ret i1 false
}

; Function Attrs: nounwind sspstrong uwtable
define void @dest_info_init(%struct.cp_options* nocapture) local_unnamed_addr #6 {
  %2 = tail call %struct.hash_table* @hash_initialize(i64 61, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @triple_hash, i1 (i8*, i8*)* nonnull @triple_compare, void (i8*)* nonnull @triple_free) #11
  %3 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %0, i64 0, i32 35
  store %struct.hash_table* %2, %struct.hash_table** %3, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @src_info_init(%struct.cp_options* nocapture) local_unnamed_addr #6 {
  %2 = tail call %struct.hash_table* @hash_initialize(i64 61, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @triple_hash_no_name, i1 (i8*, i8*)* nonnull @triple_compare, void (i8*)* nonnull @triple_free) #11
  %3 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %0, i64 0, i32 36
  store %struct.hash_table* %2, %struct.hash_table** %3, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @copy(i8*, i8*, i1 zeroext, %struct.cp_options* readonly, i8* nocapture, i8*) local_unnamed_addr #6 {
  %7 = alloca i8, align 1
  store i8* %0, i8** @top_level_src_name, align 8
  store i8* %1, i8** @top_level_dst_name, align 8
  call void @llvm.lifetime.start(i64 1, i8* nonnull %7) #11
  store i8 0, i8* %7, align 1
  %8 = call fastcc zeroext i1 @copy_internal(i8* %0, i8* %1, i1 zeroext %2, %struct.stat* null, %struct.dir_list* null, %struct.cp_options* %3, i1 zeroext true, i8* nonnull %7, i8* %4, i8* %5)
  call void @llvm.lifetime.end(i64 1, i8* nonnull %7) #11
  ret i1 %8
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @copy_internal(i8*, i8*, i1 zeroext, %struct.stat* readonly, %struct.dir_list*, %struct.cp_options* readonly, i1 zeroext, i8* nocapture, i8* nocapture, i8*) unnamed_addr #6 {
  %11 = alloca %struct.cp_options, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca %struct.error_context, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.error_context, align 8
  %18 = alloca %struct.extent_scan, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8, align 1
  %21 = alloca %struct.stat, align 8
  %22 = alloca %struct.stat, align 8
  %23 = alloca %struct.stat, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8, align 1
  %26 = alloca [2 x %struct.timespec], align 16
  %27 = alloca %struct.stat, align 8
  %28 = alloca %struct.stat, align 8
  %29 = alloca %struct.stat, align 8
  %30 = alloca %struct.stat, align 8
  %31 = alloca %struct.stat, align 8
  %32 = alloca %struct.stat, align 8
  %33 = alloca %struct.stat, align 8
  %34 = alloca %struct.stat, align 8
  %35 = alloca [2 x %struct.timespec], align 16
  %36 = zext i1 %2 to i8
  %37 = bitcast %struct.stat* %29 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %37) #11
  %38 = bitcast %struct.stat* %30 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %38) #11
  %39 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 9
  %40 = load i8, i8* %39, align 8
  %41 = icmp ne i8 %40, 0
  %42 = icmp ne i8* %9, null
  %43 = and i1 %42, %41
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %10
  store i8 0, i8* %9, align 1
  br label %45

; <label>:45:                                     ; preds = %44, %10
  store i8 0, i8* %8, align 1
  %46 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %51

; <label>:49:                                     ; preds = %45
  %50 = call i32 @__lxstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %29) #11
  br label %53

; <label>:51:                                     ; preds = %45
  %52 = call i32 @__xstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %29) #11
  br label %53

; <label>:53:                                     ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

; <label>:56:                                     ; preds = %53
  %57 = tail call i32* @__errno_location() #1
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12.60, i64 0, i64 0), i32 5) #11
  %60 = call i8* @quotearg_style(i32 4, i8* %0) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %58, i8* %59, i8* %60) #11
  br label %2221

; <label>:61:                                     ; preds = %53
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, 61440
  %65 = icmp eq i32 %64, 16384
  br i1 %65, label %66, label %77

; <label>:66:                                     ; preds = %61
  %67 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 27
  %68 = load i8, i8* %67, align 2
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %77

; <label>:70:                                     ; preds = %66
  %71 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 10
  %72 = load i8, i8* %71, align 1
  %73 = icmp ne i8 %72, 0
  %74 = select i1 %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14.61, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13.62, i64 0, i64 0)
  %75 = call i8* @dcgettext(i8* null, i8* %74, i32 5) #11
  %76 = call i8* @quotearg_style(i32 4, i8* %0) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %75, i8* %76) #11
  br label %2221

; <label>:77:                                     ; preds = %66, %61
  br i1 %6, label %78, label %93

; <label>:78:                                     ; preds = %77
  br i1 %65, label %90, label %79

; <label>:79:                                     ; preds = %78
  %80 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %90

; <label>:83:                                     ; preds = %79
  %84 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 36
  %85 = load %struct.hash_table*, %struct.hash_table** %84, align 8
  %86 = call zeroext i1 @seen_file(%struct.hash_table* %85, i8* %0, %struct.stat* nonnull %29) #11
  br i1 %86, label %87, label %90

; <label>:87:                                     ; preds = %83
  %88 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15.63, i64 0, i64 0), i32 5) #11
  %89 = call i8* @quotearg_style(i32 4, i8* %0) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %88, i8* %89) #11
  br label %2221

; <label>:90:                                     ; preds = %83, %79, %78
  %91 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 36
  %92 = load %struct.hash_table*, %struct.hash_table** %91, align 8
  call void @record_file(%struct.hash_table* %92, i8* %0, %struct.stat* nonnull %29) #11
  br label %93

; <label>:93:                                     ; preds = %90, %77
  %94 = load i32, i32* %46, align 4
  %95 = icmp eq i32 %94, 4
  br i1 %95, label %99, label %96

; <label>:96:                                     ; preds = %93
  %97 = icmp eq i32 %94, 3
  %98 = and i1 %97, %6
  br label %99

; <label>:99:                                     ; preds = %93, %96
  %100 = phi i1 [ true, %93 ], [ %98, %96 ]
  br i1 %2, label %608, label %101

; <label>:101:                                    ; preds = %99
  %102 = icmp eq i32 %64, 32768
  br i1 %102, label %109, label %103

; <label>:103:                                    ; preds = %101
  %104 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 5
  %105 = load i8, i8* %104, align 4
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %130, label %107

; <label>:107:                                    ; preds = %103
  %108 = trunc i32 %64 to i16
  switch i16 %108, label %109 [
    i16 -24576, label %130
    i16 16384, label %130
  ]

; <label>:109:                                    ; preds = %107, %101
  %110 = load i8, i8* %39, align 8
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %130

; <label>:112:                                    ; preds = %109
  %113 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 29
  %114 = load i8, i8* %113, align 4
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %130

; <label>:116:                                    ; preds = %112
  %117 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 8
  %118 = load i8, i8* %117, align 1
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %130

; <label>:120:                                    ; preds = %116
  %121 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %130

; <label>:124:                                    ; preds = %120
  %125 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 6
  %126 = load i8, i8* %125, align 1
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %130

; <label>:128:                                    ; preds = %124
  %129 = call i32 @__xstat(i32 1, i8* nonnull %1, %struct.stat* nonnull %30) #11
  br label %132

; <label>:130:                                    ; preds = %107, %107, %103, %109, %112, %116, %120, %124
  %131 = call i32 @__lxstat(i32 1, i8* nonnull %1, %struct.stat* nonnull %30) #11
  br label %132

; <label>:132:                                    ; preds = %130, %128
  %133 = phi i8 [ 0, %128 ], [ 1, %130 ]
  %134 = phi i32 [ %129, %128 ], [ %131, %130 ]
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %143, label %136

; <label>:136:                                    ; preds = %132
  %137 = tail call i32* @__errno_location() #1
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 2
  br i1 %139, label %608, label %140

; <label>:140:                                    ; preds = %136
  %141 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12.60, i64 0, i64 0), i32 5) #11
  %142 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %138, i8* %141, i8* %142) #11
  br label %2221

; <label>:143:                                    ; preds = %132
  %144 = bitcast %struct.stat* %27 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %144) #11
  %145 = bitcast %struct.stat* %28 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %145) #11
  %146 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.stat, %struct.stat* %30, i64 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %147, %149
  br i1 %150, label %151, label %162

; <label>:151:                                    ; preds = %143
  %152 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.stat, %struct.stat* %30, i64 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %153, %155
  %157 = zext i1 %156 to i8
  br i1 %156, label %158, label %162

; <label>:158:                                    ; preds = %151
  %159 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 8
  %160 = load i8, i8* %159, align 1
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %374

; <label>:162:                                    ; preds = %143, %158, %151
  %163 = phi i8 [ %157, %158 ], [ %157, %151 ], [ 0, %143 ]
  %164 = phi i1 [ true, %158 ], [ false, %151 ], [ false, %143 ]
  %165 = load i32, i32* %46, align 4
  %166 = icmp eq i32 %165, 2
  br i1 %166, label %167, label %185

; <label>:167:                                    ; preds = %162
  %168 = load i32, i32* %62, align 8
  %169 = and i32 %168, 61440
  %170 = icmp eq i32 %169, 40960
  br i1 %170, label %171, label %220

; <label>:171:                                    ; preds = %167
  %172 = getelementptr inbounds %struct.stat, %struct.stat* %30, i64 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = and i32 %173, 61440
  %175 = icmp eq i32 %174, 40960
  br i1 %175, label %176, label %220

; <label>:176:                                    ; preds = %171
  %177 = call zeroext i1 @same_name(i8* %0, i8* %1) #11
  br i1 %177, label %178, label %179

; <label>:178:                                    ; preds = %176
  call void @llvm.lifetime.end(i64 144, i8* nonnull %145) #11
  call void @llvm.lifetime.end(i64 144, i8* nonnull %144) #11
  br label %380

; <label>:179:                                    ; preds = %176
  %180 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %374

; <label>:183:                                    ; preds = %179
  br i1 %164, label %377, label %184

; <label>:184:                                    ; preds = %183
  call void @llvm.lifetime.end(i64 144, i8* nonnull %145) #11
  call void @llvm.lifetime.end(i64 144, i8* nonnull %144) #11
  br label %384

; <label>:185:                                    ; preds = %162
  br i1 %164, label %186, label %374

; <label>:186:                                    ; preds = %185
  %187 = call i32 @__lxstat(i32 1, i8* nonnull %1, %struct.stat* nonnull %27) #11
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %374

; <label>:189:                                    ; preds = %186
  %190 = call i32 @__lxstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %28) #11
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %374

; <label>:192:                                    ; preds = %189
  %193 = getelementptr inbounds %struct.stat, %struct.stat* %28, i64 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds %struct.stat, %struct.stat* %27, i64 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %194, %196
  br i1 %197, label %198, label %204

; <label>:198:                                    ; preds = %192
  %199 = getelementptr inbounds %struct.stat, %struct.stat* %28, i64 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds %struct.stat, %struct.stat* %27, i64 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %200, %202
  br label %204

; <label>:204:                                    ; preds = %198, %192
  %205 = phi i1 [ false, %192 ], [ %203, %198 ]
  %206 = zext i1 %205 to i8
  %207 = getelementptr inbounds %struct.stat, %struct.stat* %28, i64 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = and i32 %208, 61440
  %210 = icmp eq i32 %209, 40960
  br i1 %210, label %211, label %220

; <label>:211:                                    ; preds = %204
  %212 = getelementptr inbounds %struct.stat, %struct.stat* %27, i64 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = and i32 %213, 61440
  %215 = icmp eq i32 %214, 40960
  br i1 %215, label %216, label %220

; <label>:216:                                    ; preds = %211
  %217 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 6
  %218 = load i8, i8* %217, align 1
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %220, label %374

; <label>:220:                                    ; preds = %216, %211, %204, %171, %167
  %221 = phi i32 [ %208, %216 ], [ %208, %211 ], [ %208, %204 ], [ %168, %171 ], [ %168, %167 ]
  %222 = phi i8 [ %206, %216 ], [ %206, %211 ], [ %206, %204 ], [ %163, %171 ], [ %163, %167 ]
  %223 = phi %struct.stat* [ %27, %216 ], [ %27, %211 ], [ %27, %204 ], [ %30, %171 ], [ %30, %167 ]
  %224 = phi %struct.stat* [ %28, %216 ], [ %28, %211 ], [ %28, %204 ], [ %29, %171 ], [ %29, %167 ]
  %225 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %246, label %228

; <label>:228:                                    ; preds = %220
  %229 = icmp eq i8 %222, 0
  br i1 %229, label %230, label %244

; <label>:230:                                    ; preds = %228
  %231 = load i8, i8* %39, align 8
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %233, label %374

; <label>:233:                                    ; preds = %230
  %234 = load i32, i32* %46, align 4
  %235 = icmp ne i32 %234, 2
  %236 = and i32 %221, 61440
  %237 = icmp eq i32 %236, 40960
  %238 = and i1 %237, %235
  br i1 %238, label %239, label %374

; <label>:239:                                    ; preds = %233
  %240 = getelementptr inbounds %struct.stat, %struct.stat* %223, i64 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = and i32 %241, 61440
  %243 = icmp eq i32 %242, 40960
  br i1 %243, label %374, label %376

; <label>:244:                                    ; preds = %228
  %245 = call zeroext i1 @same_name(i8* %0, i8* %1) #11
  call void @llvm.lifetime.end(i64 144, i8* nonnull %145) #11
  call void @llvm.lifetime.end(i64 144, i8* nonnull %144) #11
  br i1 %245, label %380, label %384

; <label>:246:                                    ; preds = %220
  %247 = load i8, i8* %39, align 8
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %249, label %253

; <label>:249:                                    ; preds = %246
  %250 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 6
  %251 = load i8, i8* %250, align 1
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %272, label %253

; <label>:253:                                    ; preds = %249, %246
  %254 = getelementptr inbounds %struct.stat, %struct.stat* %223, i64 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = and i32 %255, 61440
  %257 = icmp eq i32 %256, 40960
  br i1 %257, label %374, label %258

; <label>:258:                                    ; preds = %253
  %259 = icmp eq i8 %222, 0
  br i1 %259, label %272, label %260

; <label>:260:                                    ; preds = %258
  %261 = getelementptr inbounds %struct.stat, %struct.stat* %223, i64 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = icmp ugt i64 %262, 1
  br i1 %263, label %264, label %272

; <label>:264:                                    ; preds = %260
  %265 = call zeroext i1 @same_name(i8* %0, i8* %1) #11
  br i1 %265, label %266, label %269

; <label>:266:                                    ; preds = %264
  %267 = getelementptr inbounds %struct.stat, %struct.stat* %224, i64 0, i32 3
  %268 = load i32, i32* %267, align 8
  br label %272

; <label>:269:                                    ; preds = %264
  %270 = load i8, i8* %39, align 8
  %271 = icmp eq i8 %270, 0
  call void @llvm.lifetime.end(i64 144, i8* nonnull %145) #11
  call void @llvm.lifetime.end(i64 144, i8* nonnull %144) #11
  br i1 %271, label %384, label %380

; <label>:272:                                    ; preds = %266, %260, %258, %249
  %273 = phi i32 [ %268, %266 ], [ %221, %258 ], [ %221, %249 ], [ %221, %260 ]
  %274 = getelementptr inbounds %struct.stat, %struct.stat* %224, i64 0, i32 3
  %275 = and i32 %273, 61440
  %276 = icmp eq i32 %275, 40960
  br i1 %276, label %298, label %277

; <label>:277:                                    ; preds = %272
  %278 = getelementptr inbounds %struct.stat, %struct.stat* %223, i64 0, i32 3
  %279 = load i32, i32* %278, align 8
  %280 = and i32 %279, 61440
  %281 = icmp eq i32 %280, 40960
  br i1 %281, label %298, label %282

; <label>:282:                                    ; preds = %277
  %283 = getelementptr inbounds %struct.stat, %struct.stat* %224, i64 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = getelementptr inbounds %struct.stat, %struct.stat* %223, i64 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = icmp eq i64 %284, %286
  br i1 %287, label %288, label %374

; <label>:288:                                    ; preds = %282
  %289 = getelementptr inbounds %struct.stat, %struct.stat* %224, i64 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = getelementptr inbounds %struct.stat, %struct.stat* %223, i64 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = icmp eq i64 %290, %292
  br i1 %293, label %294, label %374

; <label>:294:                                    ; preds = %288
  %295 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 8
  %296 = load i8, i8* %295, align 1
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %298, label %374

; <label>:298:                                    ; preds = %294, %277, %272
  %299 = load i8, i8* %39, align 8
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %314, label %301

; <label>:301:                                    ; preds = %298
  %302 = load i32, i32* %62, align 8
  %303 = and i32 %302, 61440
  %304 = icmp eq i32 %303, 40960
  br i1 %304, label %305, label %314

; <label>:305:                                    ; preds = %301
  %306 = getelementptr inbounds %struct.stat, %struct.stat* %223, i64 0, i32 2
  %307 = load i64, i64* %306, align 8
  %308 = icmp ugt i64 %307, 1
  br i1 %308, label %309, label %314

; <label>:309:                                    ; preds = %305
  %310 = call i8* @canonicalize_file_name(i8* %0) #11
  %311 = icmp eq i8* %310, null
  br i1 %311, label %314, label %312

; <label>:312:                                    ; preds = %309
  %313 = call zeroext i1 @same_name(i8* nonnull %310, i8* %1) #11
  call void @free(i8* nonnull %310) #11
  call void @llvm.lifetime.end(i64 144, i8* nonnull %145) #11
  call void @llvm.lifetime.end(i64 144, i8* nonnull %144) #11
  br i1 %313, label %380, label %384

; <label>:314:                                    ; preds = %309, %305, %301, %298
  %315 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 29
  %316 = load i8, i8* %315, align 4
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %318, label %331

; <label>:318:                                    ; preds = %314
  %319 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 8
  %320 = load i8, i8* %319, align 1
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %322, label %326

; <label>:322:                                    ; preds = %318
  %323 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 6
  %324 = load i8, i8* %323, align 1
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %337, label %326

; <label>:326:                                    ; preds = %322, %318
  %327 = getelementptr inbounds %struct.stat, %struct.stat* %223, i64 0, i32 3
  %328 = load i32, i32* %327, align 8
  %329 = and i32 %328, 61440
  %330 = icmp eq i32 %329, 40960
  br i1 %330, label %331, label %337

; <label>:331:                                    ; preds = %326, %314
  %332 = getelementptr inbounds %struct.stat, %struct.stat* %223, i64 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = getelementptr inbounds %struct.stat, %struct.stat* %224, i64 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = icmp eq i64 %333, %335
  call void @llvm.lifetime.end(i64 144, i8* nonnull %145) #11
  call void @llvm.lifetime.end(i64 144, i8* nonnull %144) #11
  br i1 %336, label %384, label %380

; <label>:337:                                    ; preds = %326, %322
  %338 = load i32, i32* %46, align 4
  %339 = icmp eq i32 %338, 2
  br i1 %339, label %340, label %376

; <label>:340:                                    ; preds = %337
  %341 = load i32, i32* %274, align 8
  %342 = and i32 %341, 61440
  %343 = icmp eq i32 %342, 40960
  br i1 %343, label %346, label %344

; <label>:344:                                    ; preds = %340
  %345 = bitcast %struct.stat* %224 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %145, i8* %345, i64 144, i32 8, i1 false) #11
  br label %349

; <label>:346:                                    ; preds = %340
  %347 = call i32 @__xstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %28) #11
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %374

; <label>:349:                                    ; preds = %346, %344
  %350 = getelementptr inbounds %struct.stat, %struct.stat* %223, i64 0, i32 3
  %351 = load i32, i32* %350, align 8
  %352 = and i32 %351, 61440
  %353 = icmp eq i32 %352, 40960
  br i1 %353, label %356, label %354

; <label>:354:                                    ; preds = %349
  %355 = bitcast %struct.stat* %223 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %144, i8* %355, i64 144, i32 8, i1 false) #11
  br label %359

; <label>:356:                                    ; preds = %349
  %357 = call i32 @__xstat(i32 1, i8* nonnull %1, %struct.stat* nonnull %27) #11
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %374

; <label>:359:                                    ; preds = %356, %354
  %360 = getelementptr inbounds %struct.stat, %struct.stat* %28, i64 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = getelementptr inbounds %struct.stat, %struct.stat* %27, i64 0, i32 1
  %363 = load i64, i64* %362, align 8
  %364 = icmp eq i64 %361, %363
  br i1 %364, label %365, label %374

; <label>:365:                                    ; preds = %359
  %366 = getelementptr inbounds %struct.stat, %struct.stat* %28, i64 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = getelementptr inbounds %struct.stat, %struct.stat* %27, i64 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = icmp eq i64 %367, %369
  br i1 %370, label %371, label %374

; <label>:371:                                    ; preds = %365
  %372 = load i8, i8* %319, align 1
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %376, label %374

; <label>:374:                                    ; preds = %179, %185, %189, %186, %216, %253, %288, %282, %346, %356, %365, %359, %158, %294, %239, %233, %230, %371
  %375 = phi i8 [ 1, %294 ], [ 1, %158 ], [ 0, %185 ], [ 0, %186 ], [ 0, %189 ], [ 0, %216 ], [ 0, %253 ], [ 0, %282 ], [ 0, %288 ], [ 0, %346 ], [ 0, %356 ], [ 0, %359 ], [ 0, %365 ], [ 0, %179 ], [ 0, %239 ], [ 0, %233 ], [ 0, %230 ], [ 1, %371 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %145) #11
  call void @llvm.lifetime.end(i64 144, i8* nonnull %144) #11
  br label %384

; <label>:376:                                    ; preds = %239, %371, %337
  call void @llvm.lifetime.end(i64 144, i8* nonnull %145) #11
  call void @llvm.lifetime.end(i64 144, i8* nonnull %144) #11
  br label %380

; <label>:377:                                    ; preds = %183
  %378 = load i8, i8* %39, align 8
  %379 = icmp eq i8 %378, 0
  call void @llvm.lifetime.end(i64 144, i8* nonnull %145) #11
  call void @llvm.lifetime.end(i64 144, i8* nonnull %144) #11
  br i1 %379, label %384, label %380

; <label>:380:                                    ; preds = %312, %244, %178, %269, %331, %376, %377
  %381 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16.64, i64 0, i64 0), i32 5) #11
  %382 = call i8* @quotearg_n_style(i32 0, i32 4, i8* %0) #11
  %383 = call i8* @quotearg_n_style(i32 1, i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %381, i8* %382, i8* %383) #11
  br label %2221

; <label>:384:                                    ; preds = %312, %244, %184, %269, %331, %374, %377
  %385 = phi i8 [ %375, %374 ], [ 1, %377 ], [ 0, %244 ], [ 0, %331 ], [ 0, %312 ], [ 0, %269 ], [ 0, %184 ]
  br i1 %65, label %424, label %386

; <label>:386:                                    ; preds = %384
  %387 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 30
  %388 = load i8, i8* %387, align 1
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %424, label %390

; <label>:390:                                    ; preds = %386
  %391 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 16
  %392 = load i8, i8* %391, align 1
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %406, label %394

; <label>:394:                                    ; preds = %390
  %395 = load i8, i8* %39, align 8
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %403, label %397

; <label>:397:                                    ; preds = %394
  %398 = getelementptr inbounds %struct.stat, %struct.stat* %30, i64 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 0
  %401 = load i64, i64* %400, align 8
  %402 = icmp eq i64 %399, %401
  br label %403

; <label>:403:                                    ; preds = %394, %397
  %404 = phi i1 [ false, %394 ], [ %402, %397 ]
  %405 = xor i1 %404, true
  br label %406

; <label>:406:                                    ; preds = %390, %403
  %407 = phi i1 [ false, %390 ], [ %405, %403 ]
  %408 = zext i1 %407 to i32
  %409 = call i32 @utimecmp(i8* %1, %struct.stat* nonnull %30, %struct.stat* nonnull %29, i32 %408) #11
  %410 = icmp sgt i32 %409, -1
  br i1 %410, label %411, label %424

; <label>:411:                                    ; preds = %406
  br i1 %42, label %412, label %413

; <label>:412:                                    ; preds = %411
  store i8 1, i8* %9, align 1
  br label %413

; <label>:413:                                    ; preds = %412, %411
  %414 = load i64, i64* %146, align 8
  %415 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 0
  %416 = load i64, i64* %415, align 8
  %417 = call i8* @remember_copied(i8* %1, i64 %414, i64 %416) #11
  %418 = icmp eq i8* %417, null
  br i1 %418, label %2221, label %419

; <label>:419:                                    ; preds = %413
  %420 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 31
  %421 = load i8, i8* %420, align 2
  %422 = icmp ne i8 %421, 0
  %423 = call fastcc zeroext i1 @create_hard_link(i8* nonnull %417, i8* %1, i1 zeroext true, i1 zeroext %422, i1 zeroext %100)
  br i1 %423, label %2221, label %2186

; <label>:424:                                    ; preds = %406, %386, %384
  %425 = load i8, i8* %39, align 8
  %426 = icmp eq i8 %425, 0
  br i1 %426, label %448, label %427

; <label>:427:                                    ; preds = %424
  %428 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 2
  %429 = load i32, i32* %428, align 8
  switch i32 %429, label %456 [
    i32 2, label %446
    i32 3, label %444
    i32 4, label %430
  ]

; <label>:430:                                    ; preds = %427
  %431 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 32
  %432 = load i8, i8* %431, align 1
  %433 = icmp eq i8 %432, 0
  br i1 %433, label %456, label %434

; <label>:434:                                    ; preds = %430
  %435 = getelementptr inbounds %struct.stat, %struct.stat* %30, i64 0, i32 3
  %436 = load i32, i32* %435, align 8
  %437 = and i32 %436, 61440
  %438 = icmp eq i32 %437, 40960
  br i1 %438, label %456, label %439

; <label>:439:                                    ; preds = %434
  %440 = call zeroext i1 @can_write_any_file() #11
  br i1 %440, label %456, label %441

; <label>:441:                                    ; preds = %439
  %442 = call i32 @euidaccess(i8* %1, i32 2) #11
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %456, label %444

; <label>:444:                                    ; preds = %427, %441
  %445 = call fastcc zeroext i1 @overwrite_ok(%struct.cp_options* nonnull %5, i8* %1, %struct.stat* nonnull %30) #11
  br i1 %445, label %456, label %446

; <label>:446:                                    ; preds = %444, %427
  br i1 %42, label %447, label %2221

; <label>:447:                                    ; preds = %446
  store i8 1, i8* %9, align 1
  br label %2221

; <label>:448:                                    ; preds = %424
  br i1 %65, label %456, label %449

; <label>:449:                                    ; preds = %448
  %450 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 2
  %451 = load i32, i32* %450, align 8
  switch i32 %451, label %456 [
    i32 2, label %2221
    i32 3, label %452
  ]

; <label>:452:                                    ; preds = %449
  %453 = call fastcc zeroext i1 @overwrite_ok(%struct.cp_options* nonnull %5, i8* %1, %struct.stat* nonnull %30)
  %454 = icmp eq i8 %385, 0
  %455 = and i1 %454, %453
  br i1 %455, label %458, label %2221

; <label>:456:                                    ; preds = %444, %427, %434, %439, %430, %441, %449, %448
  %457 = icmp eq i8 %385, 0
  br i1 %457, label %458, label %2221

; <label>:458:                                    ; preds = %452, %456
  %459 = getelementptr inbounds %struct.stat, %struct.stat* %30, i64 0, i32 3
  %460 = load i32, i32* %459, align 8
  %461 = and i32 %460, 61440
  %462 = icmp eq i32 %461, 16384
  br i1 %462, label %488, label %463

; <label>:463:                                    ; preds = %458
  br i1 %65, label %464, label %475

; <label>:464:                                    ; preds = %463
  %465 = load i8, i8* %39, align 8
  %466 = icmp eq i8 %465, 0
  br i1 %466, label %471, label %467

; <label>:467:                                    ; preds = %464
  %468 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %471, label %475

; <label>:471:                                    ; preds = %467, %464
  %472 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17.65, i64 0, i64 0), i32 5) #11
  %473 = call i8* @quotearg_n_style(i32 0, i32 4, i8* %1) #11
  %474 = call i8* @quotearg_n_style(i32 1, i32 4, i8* %0) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %472, i8* %473, i8* %474) #11
  br label %2221

; <label>:475:                                    ; preds = %467, %463
  br i1 %6, label %476, label %488

; <label>:476:                                    ; preds = %475
  %477 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = icmp eq i32 %478, 3
  br i1 %479, label %488, label %480

; <label>:480:                                    ; preds = %476
  %481 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 35
  %482 = load %struct.hash_table*, %struct.hash_table** %481, align 8
  %483 = call zeroext i1 @seen_file(%struct.hash_table* %482, i8* %1, %struct.stat* nonnull %30) #11
  br i1 %483, label %484, label %488

; <label>:484:                                    ; preds = %480
  %485 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18.66, i64 0, i64 0), i32 5) #11
  %486 = call i8* @quotearg_n_style(i32 0, i32 4, i8* %1) #11
  %487 = call i8* @quotearg_n_style(i32 1, i32 4, i8* %0) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %485, i8* %486, i8* %487) #11
  br label %2221

; <label>:488:                                    ; preds = %476, %475, %480, %458
  br i1 %65, label %503, label %489

; <label>:489:                                    ; preds = %488
  %490 = load i32, i32* %459, align 8
  %491 = and i32 %490, 61440
  %492 = icmp eq i32 %491, 16384
  br i1 %492, label %493, label %503

; <label>:493:                                    ; preds = %489
  %494 = load i8, i8* %39, align 8
  %495 = icmp eq i8 %494, 0
  br i1 %495, label %500, label %496

; <label>:496:                                    ; preds = %493
  %497 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 0
  %498 = load i32, i32* %497, align 8
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %503

; <label>:500:                                    ; preds = %496, %493
  %501 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19.67, i64 0, i64 0), i32 5) #11
  %502 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %501, i8* %502) #11
  br label %2221

; <label>:503:                                    ; preds = %496, %489, %488
  %504 = load i8, i8* %39, align 8
  %505 = icmp eq i8 %504, 0
  br i1 %505, label %522, label %506

; <label>:506:                                    ; preds = %503
  %507 = load i32, i32* %62, align 8
  %508 = and i32 %507, 61440
  %509 = icmp eq i32 %508, 16384
  br i1 %509, label %510, label %522

; <label>:510:                                    ; preds = %506
  %511 = load i32, i32* %459, align 8
  %512 = and i32 %511, 61440
  %513 = icmp eq i32 %512, 16384
  br i1 %513, label %522, label %514

; <label>:514:                                    ; preds = %510
  %515 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 0
  %516 = load i32, i32* %515, align 8
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %522

; <label>:518:                                    ; preds = %514
  %519 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.20.68, i64 0, i64 0), i32 5) #11
  %520 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11
  %521 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %519, i8* %520, i8* %521) #11
  br label %2221

; <label>:522:                                    ; preds = %503, %506, %510, %514
  %523 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 0
  %524 = load i32, i32* %523, align 8
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %566, label %526

; <label>:526:                                    ; preds = %522
  %527 = call i8* @last_component(i8* %0) #14
  %528 = load i8, i8* %527, align 1
  %529 = icmp eq i8 %528, 46
  br i1 %529, label %530, label %537

; <label>:530:                                    ; preds = %526
  %531 = getelementptr inbounds i8, i8* %527, i64 1
  %532 = load i8, i8* %531, align 1
  %533 = icmp eq i8 %532, 46
  %534 = select i1 %533, i64 2, i64 1
  %535 = getelementptr inbounds i8, i8* %527, i64 %534
  %536 = load i8, i8* %535, align 1
  switch i8 %536, label %537 [
    i8 47, label %566
    i8 0, label %566
  ]

; <label>:537:                                    ; preds = %530, %526
  br i1 %505, label %538, label %542

; <label>:538:                                    ; preds = %537
  %539 = load i32, i32* %459, align 8
  %540 = and i32 %539, 61440
  %541 = icmp eq i32 %540, 16384
  br i1 %541, label %566, label %542

; <label>:542:                                    ; preds = %537, %538
  %543 = call i8* @find_backup_file_name(i8* %1, i32 %524) #11
  %544 = call i32 @strcmp(i8* %543, i8* %0) #11
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %546, label %553

; <label>:546:                                    ; preds = %542
  %547 = load i8, i8* %39, align 8
  %548 = icmp ne i8 %547, 0
  %549 = select i1 %548, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21.69, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.22.70, i64 0, i64 0)
  %550 = call i8* @dcgettext(i8* null, i8* %549, i32 5) #11
  %551 = call i8* @quotearg_n_style(i32 0, i32 4, i8* %1) #11
  %552 = call i8* @quotearg_n_style(i32 1, i32 4, i8* %0) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %550, i8* %551, i8* %552) #11
  call void @free(i8* %543) #11
  br label %2221

; <label>:553:                                    ; preds = %542
  %554 = call i64 @strlen(i8* %543) #14
  %555 = add i64 %554, 1
  %556 = alloca i8, i64 %555, align 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %556, i8* %543, i64 %555, i32 1, i1 false)
  call void @free(i8* %543) #11
  %557 = call i32 @rename(i8* %1, i8* nonnull %556) #11
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %608, label %559

; <label>:559:                                    ; preds = %553
  %560 = tail call i32* @__errno_location() #1
  %561 = load i32, i32* %560, align 4
  %562 = icmp eq i32 %561, 2
  br i1 %562, label %608, label %563

; <label>:563:                                    ; preds = %559
  %564 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23.71, i64 0, i64 0), i32 5) #11
  %565 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %561, i8* %564, i8* %565) #11
  br label %2221

; <label>:566:                                    ; preds = %530, %530, %522, %538
  %567 = load i32, i32* %459, align 8
  %568 = and i32 %567, 61440
  %569 = icmp eq i32 %568, 16384
  br i1 %569, label %608, label %570

; <label>:570:                                    ; preds = %566
  br i1 %505, label %571, label %608

; <label>:571:                                    ; preds = %570
  %572 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 6
  %573 = load i8, i8* %572, align 1
  %574 = icmp eq i8 %573, 0
  br i1 %574, label %575, label %590

; <label>:575:                                    ; preds = %571
  %576 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 19
  %577 = load i8, i8* %576, align 2
  %578 = icmp eq i8 %577, 0
  br i1 %578, label %583, label %579

; <label>:579:                                    ; preds = %575
  %580 = getelementptr inbounds %struct.stat, %struct.stat* %30, i64 0, i32 2
  %581 = load i64, i64* %580, align 8
  %582 = icmp ugt i64 %581, 1
  br i1 %582, label %590, label %583

; <label>:583:                                    ; preds = %575, %579
  %584 = load i32, i32* %46, align 4
  %585 = icmp eq i32 %584, 2
  br i1 %585, label %586, label %608

; <label>:586:                                    ; preds = %583
  %587 = load i32, i32* %62, align 8
  %588 = and i32 %587, 61440
  %589 = icmp eq i32 %588, 32768
  br i1 %589, label %608, label %590

; <label>:590:                                    ; preds = %571, %586, %579
  %591 = call i32 @unlink(i8* %1) #11
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %600, label %593

; <label>:593:                                    ; preds = %590
  %594 = tail call i32* @__errno_location() #1
  %595 = load i32, i32* %594, align 4
  %596 = icmp eq i32 %595, 2
  br i1 %596, label %600, label %597

; <label>:597:                                    ; preds = %593
  %598 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24.72, i64 0, i64 0), i32 5) #11
  %599 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %595, i8* %598, i8* %599) #11
  br label %2221

; <label>:600:                                    ; preds = %593, %590
  %601 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 31
  %602 = load i8, i8* %601, align 2
  %603 = icmp eq i8 %602, 0
  br i1 %603, label %608, label %604

; <label>:604:                                    ; preds = %600
  %605 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25.73, i64 0, i64 0), i32 5) #11
  %606 = call i8* @quotearg_style(i32 4, i8* %1) #11
  %607 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %605, i8* %606) #11
  br label %608

; <label>:608:                                    ; preds = %99, %559, %553, %136, %604, %586, %583, %566, %570, %600
  %609 = phi i8 [ 1, %99 ], [ %36, %570 ], [ %36, %583 ], [ 1, %604 ], [ 1, %600 ], [ %36, %586 ], [ %36, %566 ], [ 1, %136 ], [ 1, %553 ], [ 1, %559 ]
  %610 = phi i8 [ 0, %99 ], [ %133, %570 ], [ %133, %583 ], [ %133, %604 ], [ %133, %600 ], [ %133, %586 ], [ %133, %566 ], [ 0, %136 ], [ %133, %553 ], [ %133, %559 ]
  %611 = phi i8 [ 0, %99 ], [ 0, %570 ], [ 0, %583 ], [ 0, %604 ], [ 0, %600 ], [ 0, %586 ], [ 0, %566 ], [ 0, %136 ], [ 1, %553 ], [ 0, %559 ]
  %612 = phi i8* [ null, %99 ], [ null, %570 ], [ null, %583 ], [ null, %604 ], [ null, %600 ], [ null, %586 ], [ null, %566 ], [ null, %136 ], [ %556, %553 ], [ null, %559 ]
  br i1 %6, label %613, label %644

; <label>:613:                                    ; preds = %608
  %614 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 35
  %615 = load %struct.hash_table*, %struct.hash_table** %614, align 8
  %616 = icmp eq %struct.hash_table* %615, null
  br i1 %616, label %644, label %617

; <label>:617:                                    ; preds = %613
  %618 = load i8, i8* %39, align 8
  %619 = icmp eq i8 %618, 0
  br i1 %619, label %620, label %644

; <label>:620:                                    ; preds = %617
  %621 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 0
  %622 = load i32, i32* %621, align 8
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %624, label %644

; <label>:624:                                    ; preds = %620
  %625 = bitcast %struct.stat* %31 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %625) #11
  %626 = icmp eq i8 %610, 0
  br i1 %626, label %627, label %630

; <label>:627:                                    ; preds = %624
  %628 = call i32 @__lxstat(i32 1, i8* nonnull %1, %struct.stat* nonnull %31) #11
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %630, label %639

; <label>:630:                                    ; preds = %624, %627
  %631 = phi %struct.stat* [ %31, %627 ], [ %30, %624 ]
  %632 = getelementptr inbounds %struct.stat, %struct.stat* %631, i64 0, i32 3
  %633 = load i32, i32* %632, align 8
  %634 = and i32 %633, 61440
  %635 = icmp eq i32 %634, 40960
  br i1 %635, label %636, label %639

; <label>:636:                                    ; preds = %630
  %637 = load %struct.hash_table*, %struct.hash_table** %614, align 8
  %638 = call zeroext i1 @seen_file(%struct.hash_table* %637, i8* %1, %struct.stat* %631) #11
  br i1 %638, label %640, label %639

; <label>:639:                                    ; preds = %636, %630, %627
  call void @llvm.lifetime.end(i64 144, i8* nonnull %625) #11
  br label %644

; <label>:640:                                    ; preds = %636
  %641 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.26.74, i64 0, i64 0), i32 5) #11
  %642 = call i8* @quotearg_n_style(i32 0, i32 4, i8* %0) #11
  %643 = call i8* @quotearg_n_style(i32 1, i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %641, i8* %642, i8* %643) #11
  call void @llvm.lifetime.end(i64 144, i8* nonnull %625) #11
  br label %2221

; <label>:644:                                    ; preds = %639, %617, %613, %620, %608
  %645 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 31
  %646 = load i8, i8* %645, align 2
  %647 = icmp eq i8 %646, 0
  %648 = or i1 %65, %647
  br i1 %648, label %652, label %649

; <label>:649:                                    ; preds = %644
  %650 = icmp ne i8 %611, 0
  %651 = select i1 %650, i8* %612, i8* null
  call fastcc void @emit_verbose(i8* %0, i8* %1, i8* %651)
  br label %652

; <label>:652:                                    ; preds = %644, %649
  %653 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 27
  %654 = load i8, i8* %653, align 2
  %655 = icmp eq i8 %654, 0
  %656 = xor i1 %65, true
  %657 = or i1 %655, %656
  br i1 %657, label %667, label %658

; <label>:658:                                    ; preds = %652
  %659 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 1
  %660 = load i64, i64* %659, align 8
  %661 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 0
  %662 = load i64, i64* %661, align 8
  br i1 %6, label %663, label %665

; <label>:663:                                    ; preds = %658
  %664 = call i8* @remember_copied(i8* %1, i64 %660, i64 %662) #11
  br label %704

; <label>:665:                                    ; preds = %658
  %666 = call i8* @src_to_dest_lookup(i64 %660, i64 %662) #11
  br label %704

; <label>:667:                                    ; preds = %652
  %668 = load i8, i8* %39, align 8
  %669 = icmp eq i8 %668, 0
  br i1 %669, label %680, label %670

; <label>:670:                                    ; preds = %667
  %671 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 2
  %672 = load i64, i64* %671, align 8
  %673 = icmp eq i64 %672, 1
  br i1 %673, label %674, label %680

; <label>:674:                                    ; preds = %670
  %675 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 1
  %676 = load i64, i64* %675, align 8
  %677 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 0
  %678 = load i64, i64* %677, align 8
  %679 = call i8* @src_to_dest_lookup(i64 %676, i64 %678) #11
  br label %704

; <label>:680:                                    ; preds = %667, %670
  %681 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 19
  %682 = load i8, i8* %681, align 2
  %683 = icmp eq i8 %682, 0
  br i1 %683, label %740, label %684

; <label>:684:                                    ; preds = %680
  %685 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 8
  %686 = load i8, i8* %685, align 1
  %687 = icmp eq i8 %686, 0
  br i1 %687, label %688, label %740

; <label>:688:                                    ; preds = %684
  %689 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 2
  %690 = load i64, i64* %689, align 8
  %691 = icmp ugt i64 %690, 1
  br i1 %691, label %698, label %692

; <label>:692:                                    ; preds = %688
  %693 = load i32, i32* %46, align 4
  %694 = icmp eq i32 %693, 3
  %695 = and i1 %694, %6
  %696 = icmp eq i32 %693, 4
  %697 = or i1 %696, %695
  br i1 %697, label %698, label %740

; <label>:698:                                    ; preds = %692, %688
  %699 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 1
  %700 = load i64, i64* %699, align 8
  %701 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 0
  %702 = load i64, i64* %701, align 8
  %703 = call i8* @remember_copied(i8* %1, i64 %700, i64 %702) #11
  br label %704

; <label>:704:                                    ; preds = %674, %698, %663, %665
  %705 = phi i8* [ %664, %663 ], [ %666, %665 ], [ %679, %674 ], [ %703, %698 ]
  %706 = icmp eq i8* %705, null
  br i1 %706, label %740, label %707

; <label>:707:                                    ; preds = %704
  br i1 %65, label %708, label %736

; <label>:708:                                    ; preds = %707
  %709 = call zeroext i1 @same_name(i8* %0, i8* nonnull %705) #11
  br i1 %709, label %710, label %716

; <label>:710:                                    ; preds = %708
  %711 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.27.75, i64 0, i64 0), i32 5) #11
  %712 = load i8*, i8** @top_level_src_name, align 8
  %713 = call i8* @quotearg_n_style(i32 0, i32 4, i8* %712) #11
  %714 = load i8*, i8** @top_level_dst_name, align 8
  %715 = call i8* @quotearg_n_style(i32 1, i32 4, i8* %714) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %711, i8* %713, i8* %715) #11
  store i8 1, i8* %8, align 1
  br label %2186

; <label>:716:                                    ; preds = %708
  %717 = call zeroext i1 @same_name(i8* %1, i8* nonnull %705) #11
  br i1 %717, label %718, label %726

; <label>:718:                                    ; preds = %716
  %719 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.28.76, i64 0, i64 0), i32 5) #11
  %720 = load i8*, i8** @top_level_src_name, align 8
  %721 = call i8* @quotearg_style(i32 4, i8* %720) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %719, i8* %721) #11
  %722 = load i8, i8* %39, align 8
  %723 = icmp ne i8 %722, 0
  %724 = and i1 %42, %723
  br i1 %724, label %725, label %2221

; <label>:725:                                    ; preds = %718
  store i8 1, i8* %9, align 1
  br label %2221

; <label>:726:                                    ; preds = %716
  %727 = load i32, i32* %46, align 4
  %728 = icmp eq i32 %727, 4
  %729 = icmp eq i32 %727, 3
  %730 = and i1 %729, %6
  %731 = or i1 %728, %730
  br i1 %731, label %740, label %732

; <label>:732:                                    ; preds = %726
  %733 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29.77, i64 0, i64 0), i32 5) #11
  %734 = call i8* @quotearg_n_style(i32 0, i32 4, i8* %1) #11
  %735 = call i8* @quotearg_n_style(i32 1, i32 4, i8* nonnull %705) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %733, i8* %734, i8* %735) #11
  br label %2186

; <label>:736:                                    ; preds = %707
  %737 = load i8, i8* %645, align 2
  %738 = icmp ne i8 %737, 0
  %739 = call fastcc zeroext i1 @create_hard_link(i8* nonnull %705, i8* %1, i1 zeroext true, i1 zeroext %738, i1 zeroext %100)
  br i1 %739, label %2221, label %2186

; <label>:740:                                    ; preds = %692, %680, %684, %704, %726
  %741 = phi i8* [ null, %704 ], [ %705, %726 ], [ null, %684 ], [ null, %680 ], [ null, %692 ]
  %742 = load i8, i8* %39, align 8
  %743 = icmp eq i8 %742, 0
  br i1 %743, label %814, label %744

; <label>:744:                                    ; preds = %740
  %745 = call i32 @rename(i8* %0, i8* %1) #11
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %747, label %778

; <label>:747:                                    ; preds = %744
  %748 = load i8, i8* %645, align 2
  %749 = icmp eq i8 %748, 0
  %750 = or i1 %749, %656
  br i1 %750, label %754, label %751

; <label>:751:                                    ; preds = %747
  %752 = icmp ne i8 %611, 0
  %753 = select i1 %752, i8* %612, i8* null
  call fastcc void @emit_verbose(i8* %0, i8* %1, i8* %753)
  br label %754

; <label>:754:                                    ; preds = %747, %751
  %755 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 18
  %756 = load i8, i8* %755, align 1
  %757 = icmp eq i8 %756, 0
  br i1 %757, label %772, label %758

; <label>:758:                                    ; preds = %754
  %759 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 20
  %760 = load i8, i8* %759, align 1
  %761 = icmp eq i8 %760, 0
  br i1 %761, label %768, label %762

; <label>:762:                                    ; preds = %758
  %763 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 23
  %764 = load i8, i8* %763, align 2
  %765 = icmp eq i8 %764, 0
  br i1 %765, label %766, label %768

; <label>:766:                                    ; preds = %762
  %767 = tail call i32* @__errno_location() #1
  store i32 95, i32* %767, align 4
  br label %772

; <label>:768:                                    ; preds = %762, %758
  %769 = tail call i32* @__errno_location() #1
  store i32 95, i32* %769, align 4
  %770 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3.55, i64 0, i64 0), i32 5) #11
  %771 = call i8* @quotearg_n_style(i32 0, i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 95, i8* %770, i8* %771) #11
  br label %772

; <label>:772:                                    ; preds = %768, %766, %754
  br i1 %42, label %773, label %774

; <label>:773:                                    ; preds = %772
  store i8 1, i8* %9, align 1
  br label %774

; <label>:774:                                    ; preds = %773, %772
  br i1 %6, label %775, label %2221

; <label>:775:                                    ; preds = %774
  %776 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 35
  %777 = load %struct.hash_table*, %struct.hash_table** %776, align 8
  call void @record_file(%struct.hash_table* %777, i8* %1, %struct.stat* nonnull %29) #11
  br label %2221

; <label>:778:                                    ; preds = %744
  %779 = tail call i32* @__errno_location() #1
  %780 = load i32, i32* %779, align 4
  switch i32 %780, label %787 [
    i32 22, label %781
    i32 18, label %795
  ]

; <label>:781:                                    ; preds = %778
  %782 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.30.78, i64 0, i64 0), i32 5) #11
  %783 = load i8*, i8** @top_level_src_name, align 8
  %784 = call i8* @quotearg_n_style(i32 0, i32 4, i8* %783) #11
  %785 = load i8*, i8** @top_level_dst_name, align 8
  %786 = call i8* @quotearg_n_style(i32 1, i32 4, i8* %785) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %782, i8* %784, i8* %786) #11
  store i8 1, i8* %8, align 1
  br label %2221

; <label>:787:                                    ; preds = %778
  %788 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31.79, i64 0, i64 0), i32 5) #11
  %789 = call i8* @quotearg_n_style(i32 0, i32 4, i8* %0) #11
  %790 = call i8* @quotearg_n_style(i32 1, i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %780, i8* %788, i8* %789, i8* %790) #11
  %791 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 1
  %792 = load i64, i64* %791, align 8
  %793 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 0
  %794 = load i64, i64* %793, align 8
  call void @forget_created(i64 %792, i64 %794) #11
  br label %2221

; <label>:795:                                    ; preds = %778
  br i1 %65, label %796, label %798

; <label>:796:                                    ; preds = %795
  %797 = call i32 @rmdir(i8* %1) #11
  br label %800

; <label>:798:                                    ; preds = %795
  %799 = call i32 @unlink(i8* %1) #11
  br label %800

; <label>:800:                                    ; preds = %798, %796
  %801 = phi i32 [ %797, %796 ], [ %799, %798 ]
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %814, label %803

; <label>:803:                                    ; preds = %800
  %804 = load i32, i32* %779, align 4
  %805 = icmp eq i32 %804, 2
  br i1 %805, label %814, label %806

; <label>:806:                                    ; preds = %803
  %807 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.32, i64 0, i64 0), i32 5) #11
  %808 = call i8* @quotearg_n_style(i32 0, i32 4, i8* %0) #11
  %809 = call i8* @quotearg_n_style(i32 1, i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %804, i8* %807, i8* %808, i8* %809) #11
  %810 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 1
  %811 = load i64, i64* %810, align 8
  %812 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 0
  %813 = load i64, i64* %812, align 8
  call void @forget_created(i64 %811, i64 %813) #11
  br label %2221

; <label>:814:                                    ; preds = %800, %803, %740
  %815 = phi i8 [ %609, %740 ], [ 1, %803 ], [ 1, %800 ]
  %816 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 28
  %817 = load i8, i8* %816, align 1
  %818 = icmp eq i8 %817, 0
  br i1 %818, label %822, label %819

; <label>:819:                                    ; preds = %814
  %820 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 4
  %821 = load i32, i32* %820, align 8
  br label %822

; <label>:822:                                    ; preds = %814, %819
  %823 = phi i32 [ %821, %819 ], [ %63, %814 ]
  %824 = and i32 %823, 4095
  %825 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 14
  %826 = load i8, i8* %825, align 1
  %827 = icmp eq i8 %826, 0
  %828 = select i1 %65, i32 18, i32 0
  %829 = select i1 %827, i32 %828, i32 63
  %830 = and i32 %829, %823
  %831 = icmp ne i8 %815, 0
  %832 = call zeroext i1 @set_process_security_ctx(i8* %0, i8* %1, i32 undef, i1 zeroext %831, %struct.cp_options* nonnull %5)
  br i1 %832, label %833, label %2221

; <label>:833:                                    ; preds = %822
  br i1 %65, label %834, label %1019

; <label>:834:                                    ; preds = %833
  %835 = icmp eq %struct.dir_list* %4, null
  %836 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 1
  %837 = load i64, i64* %836, align 8
  %838 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 0
  %839 = load i64, i64* %838, align 8
  br i1 %835, label %858, label %840

; <label>:840:                                    ; preds = %834
  br label %841

; <label>:841:                                    ; preds = %840, %850
  %842 = phi %struct.dir_list* [ %852, %850 ], [ %4, %840 ]
  %843 = getelementptr inbounds %struct.dir_list, %struct.dir_list* %842, i64 0, i32 1
  %844 = load i64, i64* %843, align 8
  %845 = icmp eq i64 %844, %837
  br i1 %845, label %846, label %850

; <label>:846:                                    ; preds = %841
  %847 = getelementptr inbounds %struct.dir_list, %struct.dir_list* %842, i64 0, i32 2
  %848 = load i64, i64* %847, align 8
  %849 = icmp eq i64 %848, %839
  br i1 %849, label %854, label %850

; <label>:850:                                    ; preds = %846, %841
  %851 = getelementptr inbounds %struct.dir_list, %struct.dir_list* %842, i64 0, i32 0
  %852 = load %struct.dir_list*, %struct.dir_list** %851, align 8
  %853 = icmp eq %struct.dir_list* %852, null
  br i1 %853, label %857, label %841

; <label>:854:                                    ; preds = %846
  %855 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.33, i64 0, i64 0), i32 5) #11
  %856 = call i8* @quotearg_style(i32 4, i8* %0) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %855, i8* %856) #11
  br label %2186

; <label>:857:                                    ; preds = %850
  br label %858

; <label>:858:                                    ; preds = %857, %834
  %859 = alloca %struct.dir_list, align 16
  %860 = getelementptr inbounds %struct.dir_list, %struct.dir_list* %859, i64 0, i32 0
  store %struct.dir_list* %4, %struct.dir_list** %860, align 16
  %861 = getelementptr inbounds %struct.dir_list, %struct.dir_list* %859, i64 0, i32 1
  store i64 %837, i64* %861, align 8
  %862 = getelementptr inbounds %struct.dir_list, %struct.dir_list* %859, i64 0, i32 2
  store i64 %839, i64* %862, align 16
  %863 = icmp eq i8 %815, 0
  br i1 %863, label %864, label %869

; <label>:864:                                    ; preds = %858
  %865 = getelementptr inbounds %struct.stat, %struct.stat* %30, i64 0, i32 3
  %866 = load i32, i32* %865, align 8
  %867 = and i32 %866, 61440
  %868 = icmp eq i32 %867, 16384
  br i1 %868, label %928, label %869

; <label>:869:                                    ; preds = %858, %864
  %870 = xor i32 %830, -1
  %871 = and i32 %824, %870
  %872 = call i32 @mkdir(i8* %1, i32 %871) #11
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %879, label %874

; <label>:874:                                    ; preds = %869
  %875 = tail call i32* @__errno_location() #1
  %876 = load i32, i32* %875, align 4
  %877 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 5) #11
  %878 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %876, i8* %877, i8* %878) #11
  br label %2186

; <label>:879:                                    ; preds = %869
  %880 = call i32 @__lxstat(i32 1, i8* nonnull %1, %struct.stat* nonnull %30) #11
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %887, label %882

; <label>:882:                                    ; preds = %879
  %883 = tail call i32* @__errno_location() #1
  %884 = load i32, i32* %883, align 4
  %885 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12.60, i64 0, i64 0), i32 5) #11
  %886 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %884, i8* %885, i8* %886) #11
  br label %2186

; <label>:887:                                    ; preds = %879
  %888 = getelementptr inbounds %struct.stat, %struct.stat* %30, i64 0, i32 3
  %889 = load i32, i32* %888, align 8
  %890 = and i32 %889, 448
  %891 = icmp eq i32 %890, 448
  br i1 %891, label %901, label %892

; <label>:892:                                    ; preds = %887
  %893 = or i32 %889, 448
  %894 = call i32 @chmod(i8* %1, i32 %893) #11
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %901, label %896

; <label>:896:                                    ; preds = %892
  %897 = tail call i32* @__errno_location() #1
  %898 = load i32, i32* %897, align 4
  %899 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i64 0, i64 0), i32 5) #11
  %900 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %898, i8* %899, i8* %900) #11
  br label %2186

; <label>:901:                                    ; preds = %892, %887
  %902 = phi i8 [ 1, %892 ], [ 0, %887 ]
  %903 = load i8, i8* %7, align 1
  %904 = icmp eq i8 %903, 0
  br i1 %904, label %905, label %911

; <label>:905:                                    ; preds = %901
  %906 = getelementptr inbounds %struct.stat, %struct.stat* %30, i64 0, i32 1
  %907 = load i64, i64* %906, align 8
  %908 = getelementptr inbounds %struct.stat, %struct.stat* %30, i64 0, i32 0
  %909 = load i64, i64* %908, align 8
  %910 = call i8* @remember_copied(i8* %1, i64 %907, i64 %909) #11
  store i8 1, i8* %7, align 1
  br label %911

; <label>:911:                                    ; preds = %901, %905
  %912 = load i8, i8* %645, align 2
  %913 = icmp eq i8 %912, 0
  br i1 %913, label %952, label %914

; <label>:914:                                    ; preds = %911
  %915 = call i8* @quotearg_n_style(i32 0, i32 4, i8* %0) #11
  %916 = call i8* @quotearg_n_style(i32 1, i32 4, i8* %1) #11
  %917 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54.80, i64 0, i64 0), i8* %915, i8* %916) #11
  %918 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %919 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %918, i64 0, i32 5
  %920 = load i8*, i8** %919, align 8
  %921 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %918, i64 0, i32 6
  %922 = load i8*, i8** %921, align 8
  %923 = icmp ult i8* %920, %922
  br i1 %923, label %926, label %924

; <label>:924:                                    ; preds = %914
  %925 = call i32 @__overflow(%struct._IO_FILE* %918, i32 10) #11
  br label %952

; <label>:926:                                    ; preds = %914
  %927 = getelementptr inbounds i8, i8* %920, i64 1
  store i8* %927, i8** %919, align 8
  store i8 10, i8* %920, align 1
  br label %952

; <label>:928:                                    ; preds = %864
  %929 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 18
  %930 = load i8, i8* %929, align 1
  %931 = icmp eq i8 %930, 0
  br i1 %931, label %932, label %936

; <label>:932:                                    ; preds = %928
  %933 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 22
  %934 = load i8, i8* %933, align 1
  %935 = icmp eq i8 %934, 0
  br i1 %935, label %952, label %936

; <label>:936:                                    ; preds = %932, %928
  %937 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 20
  %938 = load i8, i8* %937, align 1
  %939 = icmp eq i8 %938, 0
  %940 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 23
  br i1 %939, label %946, label %941

; <label>:941:                                    ; preds = %936
  %942 = load i8, i8* %940, align 2
  %943 = icmp eq i8 %942, 0
  br i1 %943, label %944, label %946

; <label>:944:                                    ; preds = %941
  %945 = tail call i32* @__errno_location() #1
  store i32 95, i32* %945, align 4
  br label %952

; <label>:946:                                    ; preds = %936, %941
  %947 = tail call i32* @__errno_location() #1
  store i32 95, i32* %947, align 4
  %948 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3.55, i64 0, i64 0), i32 5) #11
  %949 = call i8* @quotearg_n_style(i32 0, i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 95, i8* %948, i8* %949) #11
  %950 = load i8, i8* %940, align 2
  %951 = icmp eq i8 %950, 0
  br i1 %951, label %952, label %2186

; <label>:952:                                    ; preds = %944, %926, %924, %946, %932, %911
  %953 = phi i8 [ %902, %911 ], [ 0, %946 ], [ 0, %932 ], [ %902, %924 ], [ %902, %926 ], [ 0, %944 ]
  %954 = phi i32 [ %830, %911 ], [ 0, %946 ], [ 0, %932 ], [ %830, %924 ], [ %830, %926 ], [ 0, %944 ]
  %955 = phi i32 [ %889, %911 ], [ undef, %946 ], [ undef, %932 ], [ %889, %924 ], [ %889, %926 ], [ undef, %944 ]
  %956 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 13
  %957 = load i8, i8* %956, align 4
  %958 = icmp ne i8 %957, 0
  %959 = icmp ne %struct.stat* %3, null
  %960 = and i1 %959, %958
  br i1 %960, label %961, label %966

; <label>:961:                                    ; preds = %952
  %962 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 0
  %963 = load i64, i64* %962, align 8
  %964 = load i64, i64* %838, align 8
  %965 = icmp eq i64 %963, %964
  br i1 %965, label %966, label %1928

; <label>:966:                                    ; preds = %961, %952
  %967 = bitcast %struct.cp_options* %11 to i8*
  call void @llvm.lifetime.start(i64 72, i8* nonnull %967) #11
  %968 = bitcast %struct.cp_options* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %967, i8* %968, i64 72, i32 8, i1 false) #11
  %969 = call i8* @savedir(i8* %0, i32 2) #11
  %970 = icmp eq i8* %969, null
  br i1 %970, label %971, label %976

; <label>:971:                                    ; preds = %966
  %972 = tail call i32* @__errno_location() #1
  %973 = load i32, i32* %972, align 4
  %974 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56.81, i64 0, i64 0), i32 5) #11
  %975 = call i8* @quotearg_style(i32 4, i8* %0) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %973, i8* %974, i8* %975) #11
  br label %1016

; <label>:976:                                    ; preds = %966
  %977 = load i32, i32* %46, align 4
  %978 = icmp eq i32 %977, 3
  br i1 %978, label %979, label %981

; <label>:979:                                    ; preds = %976
  %980 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %11, i64 0, i32 1
  store i32 2, i32* %980, align 4
  br label %981

; <label>:981:                                    ; preds = %976, %979
  %982 = load i8, i8* %969, align 1
  %983 = icmp eq i8 %982, 0
  br i1 %983, label %1010, label %984

; <label>:984:                                    ; preds = %981
  br label %985

; <label>:985:                                    ; preds = %984, %999
  %986 = phi i8* [ %1005, %999 ], [ %969, %984 ]
  %987 = phi i8 [ %1002, %999 ], [ 0, %984 ]
  %988 = phi i8 [ %994, %999 ], [ 1, %984 ]
  call void @llvm.lifetime.start(i64 1, i8* nonnull %12) #11
  %989 = call i8* @file_name_concat(i8* %0, i8* %986, i8** null) #11
  %990 = call i8* @file_name_concat(i8* %1, i8* %986, i8** null) #11
  call void @llvm.lifetime.start(i64 1, i8* nonnull %13) #11
  %991 = load i8, i8* %7, align 1
  store i8 %991, i8* %13, align 1
  %992 = call fastcc zeroext i1 @copy_internal(i8* %989, i8* %990, i1 zeroext %831, %struct.stat* nonnull %29, %struct.dir_list* nonnull %859, %struct.cp_options* nonnull %11, i1 zeroext false, i8* nonnull %13, i8* nonnull %12, i8* null) #11
  %993 = zext i1 %992 to i8
  %994 = and i8 %993, %988
  %995 = load i8, i8* %12, align 1
  %996 = load i8, i8* %8, align 1
  %997 = or i8 %996, %995
  store i8 %997, i8* %8, align 1
  call void @free(i8* %990) #11
  call void @free(i8* %989) #11
  %998 = icmp eq i8 %995, 0
  br i1 %998, label %999, label %1008

; <label>:999:                                    ; preds = %985
  %1000 = load i8, i8* %13, align 1
  %1001 = and i8 %987, 1
  %1002 = or i8 %1000, %1001
  %1003 = call i64 @strlen(i8* %986) #14
  %1004 = add i64 %1003, 1
  %1005 = getelementptr inbounds i8, i8* %986, i64 %1004
  call void @llvm.lifetime.end(i64 1, i8* nonnull %13) #11
  call void @llvm.lifetime.end(i64 1, i8* nonnull %12) #11
  %1006 = load i8, i8* %1005, align 1
  %1007 = icmp eq i8 %1006, 0
  br i1 %1007, label %1009, label %985

; <label>:1008:                                   ; preds = %985
  call void @llvm.lifetime.end(i64 1, i8* nonnull %13) #11
  call void @llvm.lifetime.end(i64 1, i8* nonnull %12) #11
  br label %1010

; <label>:1009:                                   ; preds = %999
  br label %1010

; <label>:1010:                                   ; preds = %1009, %981, %1008
  %1011 = phi i8 [ %987, %1008 ], [ 0, %981 ], [ %1002, %1009 ]
  %1012 = phi i8 [ %994, %1008 ], [ 1, %981 ], [ %994, %1009 ]
  call void @free(i8* %969) #11
  %1013 = and i8 %1011, 1
  store i8 %1013, i8* %7, align 1
  %1014 = and i8 %1012, 1
  %1015 = icmp ne i8 %1014, 0
  br label %1016

; <label>:1016:                                   ; preds = %971, %1010
  %1017 = phi i1 [ false, %971 ], [ %1015, %1010 ]
  call void @llvm.lifetime.end(i64 72, i8* nonnull %967) #11
  %1018 = zext i1 %1017 to i8
  br label %1928

; <label>:1019:                                   ; preds = %833
  %1020 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 29
  %1021 = load i8, i8* %1020, align 4
  %1022 = icmp eq i8 %1021, 0
  br i1 %1022, label %1074, label %1023

; <label>:1023:                                   ; preds = %1019
  %1024 = load i8, i8* %0, align 1
  %1025 = icmp eq i8 %1024, 47
  br i1 %1025, label %1062, label %1026

; <label>:1026:                                   ; preds = %1023
  %1027 = bitcast %struct.stat* %32 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %1027) #11
  %1028 = bitcast %struct.stat* %33 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %1028) #11
  %1029 = call i8* @dir_name(i8* %1) #11
  %1030 = load i8, i8* %1029, align 1
  %1031 = icmp eq i8 %1030, 46
  br i1 %1031, label %1032, label %1036

; <label>:1032:                                   ; preds = %1026
  %1033 = getelementptr inbounds i8, i8* %1029, i64 1
  %1034 = load i8, i8* %1033, align 1
  %1035 = icmp eq i8 %1034, 0
  br i1 %1035, label %1057, label %1036

; <label>:1036:                                   ; preds = %1026, %1032
  %1037 = call i32 @__xstat(i32 1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), %struct.stat* nonnull %32) #11
  %1038 = icmp eq i32 %1037, 0
  br i1 %1038, label %1039, label %1056

; <label>:1039:                                   ; preds = %1036
  %1040 = call i32 @__xstat(i32 1, i8* nonnull %1029, %struct.stat* nonnull %33) #11
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1042, label %1055

; <label>:1042:                                   ; preds = %1039
  %1043 = getelementptr inbounds %struct.stat, %struct.stat* %32, i64 0, i32 1
  %1044 = load i64, i64* %1043, align 8
  %1045 = getelementptr inbounds %struct.stat, %struct.stat* %33, i64 0, i32 1
  %1046 = load i64, i64* %1045, align 8
  %1047 = icmp eq i64 %1044, %1046
  br i1 %1047, label %1048, label %1054

; <label>:1048:                                   ; preds = %1042
  %1049 = getelementptr inbounds %struct.stat, %struct.stat* %32, i64 0, i32 0
  %1050 = load i64, i64* %1049, align 8
  %1051 = getelementptr inbounds %struct.stat, %struct.stat* %33, i64 0, i32 0
  %1052 = load i64, i64* %1051, align 8
  %1053 = icmp eq i64 %1050, %1052
  call void @free(i8* %1029) #11
  br i1 %1053, label %1058, label %1059

; <label>:1054:                                   ; preds = %1042
  call void @free(i8* %1029) #11
  br label %1059

; <label>:1055:                                   ; preds = %1039
  call void @free(i8* %1029) #11
  br label %1058

; <label>:1056:                                   ; preds = %1036
  call void @free(i8* %1029) #11
  br label %1058

; <label>:1057:                                   ; preds = %1032
  call void @free(i8* nonnull %1029) #11
  br label %1058

; <label>:1058:                                   ; preds = %1057, %1056, %1055, %1048
  call void @llvm.lifetime.end(i64 144, i8* nonnull %1028) #11
  call void @llvm.lifetime.end(i64 144, i8* nonnull %1027) #11
  br label %1062

; <label>:1059:                                   ; preds = %1048, %1054
  %1060 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.37, i64 0, i64 0), i32 5) #11
  %1061 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %1060, i8* %1061) #11
  call void @llvm.lifetime.end(i64 144, i8* nonnull %1028) #11
  call void @llvm.lifetime.end(i64 144, i8* nonnull %1027) #11
  br label %2186

; <label>:1062:                                   ; preds = %1058, %1023
  %1063 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 7
  %1064 = load i8, i8* %1063, align 2
  %1065 = icmp ne i8 %1064, 0
  %1066 = call i32 @force_symlinkat(i8* %0, i32 -100, i8* %1, i1 zeroext %1065) #11
  %1067 = icmp slt i32 %1066, 0
  br i1 %1067, label %1068, label %1928

; <label>:1068:                                   ; preds = %1062
  %1069 = tail call i32* @__errno_location() #1
  %1070 = load i32, i32* %1069, align 4
  %1071 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.38, i64 0, i64 0), i32 5) #11
  %1072 = call i8* @quotearg_n_style(i32 0, i32 4, i8* %1) #11
  %1073 = call i8* @quotearg_n_style(i32 1, i32 4, i8* %0) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1070, i8* %1071, i8* %1072, i8* %1073) #11
  br label %2186

; <label>:1074:                                   ; preds = %1019
  %1075 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 8
  %1076 = load i8, i8* %1075, align 1
  %1077 = icmp eq i8 %1076, 0
  br i1 %1077, label %1083, label %1078

; <label>:1078:                                   ; preds = %1074
  %1079 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 7
  %1080 = load i8, i8* %1079, align 2
  %1081 = icmp ne i8 %1080, 0
  %1082 = call fastcc zeroext i1 @create_hard_link(i8* %0, i8* %1, i1 zeroext %1081, i1 zeroext false, i1 zeroext %100)
  br i1 %1082, label %1928, label %2186

; <label>:1083:                                   ; preds = %1074
  %1084 = icmp eq i32 %64, 32768
  br i1 %1084, label %1091, label %1085

; <label>:1085:                                   ; preds = %1083
  %1086 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 5
  %1087 = load i8, i8* %1086, align 4
  %1088 = icmp eq i8 %1087, 0
  %1089 = icmp eq i32 %64, 40960
  %1090 = or i1 %1089, %1088
  br i1 %1090, label %1821, label %1091

; <label>:1091:                                   ; preds = %1085, %1083
  %1092 = and i32 %823, 511
  %1093 = load i32, i32* %62, align 8
  %1094 = bitcast %struct.stat* %21 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %1094) #11
  %1095 = bitcast %struct.stat* %22 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %1095) #11
  %1096 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 20
  %1097 = load i8, i8* %1096, align 1
  %1098 = icmp eq i8 %1097, 0
  %1099 = load i32, i32* %46, align 4
  %1100 = icmp eq i32 %1099, 2
  %1101 = select i1 %1100, i32 131072, i32 0
  %1102 = call i32 (i8*, i32, ...) @open_safer(i8* %0, i32 %1101) #11
  %1103 = icmp slt i32 %1102, 0
  br i1 %1103, label %1104, label %1109

; <label>:1104:                                   ; preds = %1091
  %1105 = tail call i32* @__errno_location() #1
  %1106 = load i32, i32* %1105, align 4
  %1107 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.57.82, i64 0, i64 0), i32 5) #11
  %1108 = call i8* @quotearg_style(i32 4, i8* %0) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1106, i8* %1107, i8* %1108) #11
  call void @llvm.lifetime.end(i64 144, i8* nonnull %1095) #11
  call void @llvm.lifetime.end(i64 144, i8* nonnull %1094) #11
  br label %2186

; <label>:1109:                                   ; preds = %1091
  %1110 = call i32 @__fxstat(i32 1, i32 %1102, %struct.stat* nonnull %22) #11
  %1111 = icmp eq i32 %1110, 0
  br i1 %1111, label %1117, label %1112

; <label>:1112:                                   ; preds = %1109
  %1113 = tail call i32* @__errno_location() #1
  %1114 = load i32, i32* %1113, align 4
  %1115 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58.83, i64 0, i64 0), i32 5) #11
  %1116 = call i8* @quotearg_style(i32 4, i8* %0) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1114, i8* %1115, i8* %1116) #11
  br label %1806

; <label>:1117:                                   ; preds = %1109
  %1118 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 1
  %1119 = load i64, i64* %1118, align 8
  %1120 = getelementptr inbounds %struct.stat, %struct.stat* %22, i64 0, i32 1
  %1121 = load i64, i64* %1120, align 8
  %1122 = icmp eq i64 %1119, %1121
  br i1 %1122, label %1123, label %1129

; <label>:1123:                                   ; preds = %1117
  %1124 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 0
  %1125 = load i64, i64* %1124, align 8
  %1126 = getelementptr inbounds %struct.stat, %struct.stat* %22, i64 0, i32 0
  %1127 = load i64, i64* %1126, align 8
  %1128 = icmp eq i64 %1125, %1127
  br i1 %1128, label %1132, label %1129

; <label>:1129:                                   ; preds = %1123, %1117
  %1130 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.59.84, i64 0, i64 0), i32 5) #11
  %1131 = call i8* @quotearg_style(i32 4, i8* %0) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %1130, i8* %1131) #11
  br label %1806

; <label>:1132:                                   ; preds = %1123
  %1133 = icmp eq i8 %815, 0
  br i1 %1133, label %1134, label %1190

; <label>:1134:                                   ; preds = %1132
  %1135 = load i8, i8* %1096, align 1
  %1136 = icmp ne i8 %1135, 0
  %1137 = select i1 %1136, i32 513, i32 1
  %1138 = call i32 (i8*, i32, ...) @open_safer(i8* %1, i32 %1137) #11
  %1139 = tail call i32* @__errno_location() #1
  %1140 = load i32, i32* %1139, align 4
  %1141 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 18
  %1142 = load i8, i8* %1141, align 1
  %1143 = icmp eq i8 %1142, 0
  br i1 %1143, label %1144, label %1150

; <label>:1144:                                   ; preds = %1134
  %1145 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 22
  %1146 = load i8, i8* %1145, align 1
  %1147 = icmp ne i8 %1146, 0
  %1148 = icmp sgt i32 %1138, -1
  %1149 = and i1 %1148, %1147
  br i1 %1149, label %1152, label %1165

; <label>:1150:                                   ; preds = %1134
  %1151 = icmp sgt i32 %1138, -1
  br i1 %1151, label %1152, label %1167

; <label>:1152:                                   ; preds = %1150, %1144
  %1153 = load i8, i8* %1096, align 1
  %1154 = icmp eq i8 %1153, 0
  %1155 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 23
  br i1 %1154, label %1160, label %1156

; <label>:1156:                                   ; preds = %1152
  %1157 = load i8, i8* %1155, align 2
  %1158 = icmp eq i8 %1157, 0
  br i1 %1158, label %1159, label %1160

; <label>:1159:                                   ; preds = %1156
  store i32 95, i32* %1139, align 4
  br label %1242

; <label>:1160:                                   ; preds = %1156, %1152
  store i32 95, i32* %1139, align 4
  %1161 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3.55, i64 0, i64 0), i32 5) #11
  %1162 = call i8* @quotearg_n_style(i32 0, i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 95, i8* %1161, i8* %1162) #11
  %1163 = load i8, i8* %1155, align 2
  %1164 = icmp eq i8 %1163, 0
  br i1 %1164, label %1242, label %1794

; <label>:1165:                                   ; preds = %1144
  %1166 = icmp slt i32 %1138, 0
  br i1 %1166, label %1167, label %1242

; <label>:1167:                                   ; preds = %1165, %1150
  %1168 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 7
  %1169 = load i8, i8* %1168, align 2
  %1170 = icmp eq i8 %1169, 0
  br i1 %1170, label %1242, label %1171

; <label>:1171:                                   ; preds = %1167
  %1172 = call i32 @unlink(i8* %1) #11
  %1173 = icmp eq i32 %1172, 0
  br i1 %1173, label %1178, label %1174

; <label>:1174:                                   ; preds = %1171
  %1175 = load i32, i32* %1139, align 4
  %1176 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24.72, i64 0, i64 0), i32 5) #11
  %1177 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1175, i8* %1176, i8* %1177) #11
  br label %1806

; <label>:1178:                                   ; preds = %1171
  %1179 = load i8, i8* %645, align 2
  %1180 = icmp eq i8 %1179, 0
  br i1 %1180, label %1185, label %1181

; <label>:1181:                                   ; preds = %1178
  %1182 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25.73, i64 0, i64 0), i32 5) #11
  %1183 = call i8* @quotearg_style(i32 4, i8* %1) #11
  %1184 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1182, i8* %1183) #11
  br label %1185

; <label>:1185:                                   ; preds = %1181, %1178
  %1186 = load i8, i8* %1141, align 1
  %1187 = icmp eq i8 %1186, 0
  br i1 %1187, label %1190, label %1188

; <label>:1188:                                   ; preds = %1185
  %1189 = call zeroext i1 @set_process_security_ctx(i8* %0, i8* %1, i32 undef, i1 zeroext true, %struct.cp_options* nonnull %5) #11
  br i1 %1189, label %1190, label %1806

; <label>:1190:                                   ; preds = %1252, %1188, %1185, %1132
  %1191 = phi i8 [ 1, %1185 ], [ %815, %1132 ], [ 1, %1188 ], [ 1, %1252 ]
  %1192 = phi i32 [ %830, %1185 ], [ %830, %1132 ], [ %830, %1188 ], [ %1246, %1252 ]
  %1193 = xor i32 %1192, -1
  %1194 = and i32 %1092, %1193
  %1195 = call i32 (i8*, i32, ...) @open_safer(i8* %1, i32 193, i32 %1194) #11
  %1196 = tail call i32* @__errno_location() #1
  %1197 = load i32, i32* %1196, align 4
  %1198 = icmp slt i32 %1195, 0
  %1199 = icmp eq i32 %1197, 17
  %1200 = and i1 %1198, %1199
  br i1 %1200, label %1201, label %1223

; <label>:1201:                                   ; preds = %1190
  %1202 = load i8, i8* %39, align 8
  %1203 = icmp eq i8 %1202, 0
  br i1 %1203, label %1204, label %1242

; <label>:1204:                                   ; preds = %1201
  %1205 = bitcast %struct.stat* %23 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %1205) #11
  %1206 = call i32 @__lxstat(i32 1, i8* nonnull %1, %struct.stat* nonnull %23) #11
  %1207 = icmp eq i32 %1206, 0
  br i1 %1207, label %1208, label %1220

; <label>:1208:                                   ; preds = %1204
  %1209 = getelementptr inbounds %struct.stat, %struct.stat* %23, i64 0, i32 3
  %1210 = load i32, i32* %1209, align 8
  %1211 = and i32 %1210, 61440
  %1212 = icmp eq i32 %1211, 40960
  br i1 %1212, label %1213, label %1220

; <label>:1213:                                   ; preds = %1208
  %1214 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 33
  %1215 = load i8, i8* %1214, align 8
  %1216 = icmp eq i8 %1215, 0
  br i1 %1216, label %1239, label %1217

; <label>:1217:                                   ; preds = %1213
  %1218 = call i32 (i8*, i32, ...) @open_safer(i8* %1, i32 65, i32 %1194) #11
  %1219 = load i32, i32* %1196, align 4
  br label %1220

; <label>:1220:                                   ; preds = %1217, %1208, %1204
  %1221 = phi i32 [ 17, %1204 ], [ 17, %1208 ], [ %1219, %1217 ]
  %1222 = phi i32 [ %1195, %1204 ], [ %1195, %1208 ], [ %1218, %1217 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %1205) #11
  br label %1223

; <label>:1223:                                   ; preds = %1220, %1190
  %1224 = phi i32 [ %1197, %1190 ], [ %1221, %1220 ]
  %1225 = phi i32 [ %1195, %1190 ], [ %1222, %1220 ]
  %1226 = icmp slt i32 %1225, 0
  %1227 = icmp eq i32 %1224, 21
  %1228 = and i1 %1227, %1226
  br i1 %1228, label %1229, label %1242

; <label>:1229:                                   ; preds = %1223
  %1230 = load i8, i8* %1, align 1
  %1231 = icmp eq i8 %1230, 0
  br i1 %1231, label %1242, label %1232

; <label>:1232:                                   ; preds = %1229
  %1233 = call i64 @strlen(i8* nonnull %1) #14
  %1234 = add i64 %1233, -1
  %1235 = getelementptr inbounds i8, i8* %1, i64 %1234
  %1236 = load i8, i8* %1235, align 1
  %1237 = icmp eq i8 %1236, 47
  %1238 = select i1 %1237, i32 20, i32 21
  br label %1242

; <label>:1239:                                   ; preds = %1213
  %1240 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.60.85, i64 0, i64 0), i32 5) #11
  %1241 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %1240, i8* %1241) #11
  call void @llvm.lifetime.end(i64 144, i8* nonnull %1205) #11
  br label %1806

; <label>:1242:                                   ; preds = %1165, %1167, %1159, %1160, %1232, %1229, %1223, %1201
  %1243 = phi i8 [ %1191, %1229 ], [ %1191, %1232 ], [ %1191, %1223 ], [ %1191, %1201 ], [ 0, %1160 ], [ 0, %1159 ], [ 0, %1167 ], [ 0, %1165 ]
  %1244 = phi i32 [ 21, %1229 ], [ %1238, %1232 ], [ %1224, %1223 ], [ 17, %1201 ], [ %1140, %1160 ], [ %1140, %1159 ], [ %1140, %1167 ], [ %1140, %1165 ]
  %1245 = phi i32 [ %1225, %1229 ], [ %1225, %1232 ], [ %1225, %1223 ], [ %1195, %1201 ], [ %1138, %1160 ], [ %1138, %1159 ], [ %1138, %1167 ], [ %1138, %1165 ]
  %1246 = phi i32 [ %1192, %1229 ], [ %1192, %1232 ], [ %1192, %1223 ], [ %1192, %1201 ], [ 0, %1160 ], [ 0, %1159 ], [ 0, %1167 ], [ 0, %1165 ]
  %1247 = icmp slt i32 %1245, 0
  br i1 %1247, label %1248, label %1258

; <label>:1248:                                   ; preds = %1242
  %1249 = icmp eq i32 %1244, 2
  %1250 = icmp eq i8 %1243, 0
  %1251 = and i1 %1250, %1249
  br i1 %1251, label %1252, label %1255

; <label>:1252:                                   ; preds = %1248
  %1253 = load i8, i8* %39, align 8
  %1254 = icmp eq i8 %1253, 0
  br i1 %1254, label %1190, label %1255

; <label>:1255:                                   ; preds = %1252, %1248
  %1256 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.61.86, i64 0, i64 0), i32 5) #11
  %1257 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1244, i8* %1256, i8* %1257) #11
  br label %1806

; <label>:1258:                                   ; preds = %1242
  %1259 = call i32 @__fxstat(i32 1, i32 %1245, %struct.stat* nonnull %21) #11
  %1260 = icmp eq i32 %1259, 0
  br i1 %1260, label %1266, label %1261

; <label>:1261:                                   ; preds = %1258
  %1262 = tail call i32* @__errno_location() #1
  %1263 = load i32, i32* %1262, align 4
  %1264 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58.83, i64 0, i64 0), i32 5) #11
  %1265 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1263, i8* %1264, i8* %1265) #11
  br label %1794

; <label>:1266:                                   ; preds = %1258
  br i1 %1098, label %1593, label %1267

; <label>:1267:                                   ; preds = %1266
  %1268 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 34
  %1269 = load i32, i32* %1268, align 4
  %1270 = icmp eq i32 %1269, 0
  br i1 %1270, label %1283, label %1271

; <label>:1271:                                   ; preds = %1267
  %1272 = call i32 (i32, i64, ...) @ioctl(i32 %1245, i64 1074041865, i32 %1102) #11
  %1273 = icmp eq i32 %1272, 0
  br i1 %1273, label %1593, label %1274

; <label>:1274:                                   ; preds = %1271
  %1275 = load i32, i32* %1268, align 4
  %1276 = icmp eq i32 %1275, 2
  br i1 %1276, label %1277, label %1283

; <label>:1277:                                   ; preds = %1274
  %1278 = tail call i32* @__errno_location() #1
  %1279 = load i32, i32* %1278, align 4
  %1280 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0), i32 5) #11
  %1281 = call i8* @quotearg_n_style(i32 0, i32 4, i8* %1) #11
  %1282 = call i8* @quotearg_n_style(i32 1, i32 4, i8* %0) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1279, i8* %1280, i8* %1281, i8* %1282) #11
  br label %1794

; <label>:1283:                                   ; preds = %1274, %1267
  %1284 = tail call i32 @getpagesize() #1
  %1285 = sext i32 %1284 to i64
  %1286 = getelementptr inbounds %struct.stat, %struct.stat* %21, i64 0, i32 9
  %1287 = load i64, i64* %1286, align 8
  %1288 = icmp sgt i64 %1287, 0
  %1289 = icmp ult i64 %1287, 2305843009213693953
  %1290 = and i1 %1288, %1289
  %1291 = and i1 %1288, %1289
  %1292 = xor i1 %1291, true
  %1293 = icmp slt i64 %1287, 131072
  %1294 = or i1 %1293, %1292
  %1295 = select i1 %1290, i64 %1287, i64 512
  %1296 = select i1 %1294, i64 131072, i64 %1295
  call void @fdadvise(i32 %1102, i64 0, i64 0, i32 2) #11
  %1297 = getelementptr inbounds %struct.stat, %struct.stat* %22, i64 0, i32 3
  %1298 = load i32, i32* %1297, align 8
  %1299 = and i32 %1298, 61440
  %1300 = icmp eq i32 %1299, 32768
  br i1 %1300, label %1301, label %1308

; <label>:1301:                                   ; preds = %1283
  %1302 = getelementptr inbounds %struct.stat, %struct.stat* %22, i64 0, i32 10
  %1303 = load i64, i64* %1302, align 8
  %1304 = getelementptr inbounds %struct.stat, %struct.stat* %22, i64 0, i32 8
  %1305 = load i64, i64* %1304, align 8
  %1306 = sdiv i64 %1305, 512
  %1307 = icmp slt i64 %1303, %1306
  br label %1308

; <label>:1308:                                   ; preds = %1301, %1283
  %1309 = phi i1 [ false, %1283 ], [ %1307, %1301 ]
  %1310 = getelementptr inbounds %struct.stat, %struct.stat* %21, i64 0, i32 3
  %1311 = load i32, i32* %1310, align 8
  %1312 = and i32 %1311, 61440
  %1313 = icmp eq i32 %1312, 32768
  br i1 %1313, label %1314, label %1321

; <label>:1314:                                   ; preds = %1308
  %1315 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 3
  %1316 = load i32, i32* %1315, align 4
  %1317 = icmp eq i32 %1316, 3
  %1318 = icmp eq i32 %1316, 2
  %1319 = and i1 %1309, %1318
  %1320 = or i1 %1317, %1319
  br i1 %1320, label %1350, label %1321

; <label>:1321:                                   ; preds = %1314, %1308
  %1322 = sub i64 9223372036854775807, %1285
  %1323 = getelementptr inbounds %struct.stat, %struct.stat* %22, i64 0, i32 9
  %1324 = load i64, i64* %1323, align 8
  %1325 = icmp sgt i64 %1324, 0
  %1326 = icmp ult i64 %1324, 2305843009213693953
  %1327 = and i1 %1325, %1326
  %1328 = and i1 %1325, %1326
  %1329 = xor i1 %1328, true
  %1330 = icmp slt i64 %1324, 131072
  %1331 = or i1 %1330, %1329
  %1332 = select i1 %1327, i64 %1324, i64 512
  %1333 = select i1 %1331, i64 131072, i64 %1332
  %1334 = call i64 @buffer_lcm(i64 %1333, i64 %1296, i64 %1322) #1
  br i1 %1300, label %1335, label %1341

; <label>:1335:                                   ; preds = %1321
  %1336 = getelementptr inbounds %struct.stat, %struct.stat* %22, i64 0, i32 8
  %1337 = load i64, i64* %1336, align 8
  %1338 = icmp ult i64 %1337, %1296
  %1339 = add nsw i64 %1337, 1
  %1340 = select i1 %1338, i64 %1339, i64 %1296
  br label %1341

; <label>:1341:                                   ; preds = %1335, %1321
  %1342 = phi i64 [ %1296, %1321 ], [ %1340, %1335 ]
  %1343 = add i64 %1334, -1
  %1344 = add i64 %1343, %1342
  %1345 = urem i64 %1344, %1334
  %1346 = sub i64 %1344, %1345
  %1347 = add i64 %1346, -1
  %1348 = icmp uge i64 %1347, %1322
  %1349 = select i1 %1348, i64 %1334, i64 %1346
  br label %1350

; <label>:1350:                                   ; preds = %1341, %1314
  %1351 = phi i1 [ true, %1314 ], [ false, %1341 ]
  %1352 = phi i64 [ %1296, %1314 ], [ %1349, %1341 ]
  %1353 = add i64 %1352, %1285
  %1354 = call noalias i8* @xmalloc(i64 %1353) #11
  %1355 = getelementptr inbounds i8, i8* %1354, i64 %1285
  %1356 = getelementptr inbounds i8, i8* %1355, i64 -1
  %1357 = ptrtoint i8* %1356 to i64
  %1358 = urem i64 %1357, %1285
  %1359 = sub i64 0, %1358
  %1360 = getelementptr inbounds i8, i8* %1356, i64 %1359
  br i1 %1309, label %1361, label %1572

; <label>:1361:                                   ; preds = %1350
  %1362 = getelementptr inbounds %struct.stat, %struct.stat* %22, i64 0, i32 8
  %1363 = load i64, i64* %1362, align 8
  br i1 %1351, label %1364, label %1367

; <label>:1364:                                   ; preds = %1361
  %1365 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 3
  %1366 = load i32, i32* %1365, align 4
  br label %1367

; <label>:1367:                                   ; preds = %1364, %1361
  %1368 = phi i32 [ %1366, %1364 ], [ 1, %1361 ]
  %1369 = bitcast %struct.extent_scan* %18 to i8*
  call void @llvm.lifetime.start(i64 48, i8* nonnull %1369) #11
  call void @extent_scan_init(i32 %1102, %struct.extent_scan* nonnull %18) #11
  %1370 = getelementptr inbounds %struct.extent_scan, %struct.extent_scan* %18, i64 0, i32 3
  %1371 = getelementptr inbounds %struct.extent_scan, %struct.extent_scan* %18, i64 0, i32 5
  %1372 = getelementptr inbounds %struct.extent_scan, %struct.extent_scan* %18, i64 0, i32 6
  %1373 = bitcast %struct.extent_info** %1372 to i8**
  %1374 = bitcast i64* %19 to i8*
  %1375 = icmp eq i32 %1368, 3
  %1376 = select i1 %1375, i64 %1295, i64 0
  %1377 = icmp eq i32 %1368, 1
  br label %1378

; <label>:1378:                                   ; preds = %1505, %1367
  %1379 = phi i64 [ 0, %1367 ], [ %1509, %1505 ]
  %1380 = phi i64 [ 0, %1367 ], [ %1508, %1505 ]
  %1381 = phi i8 [ 1, %1367 ], [ %1507, %1505 ]
  %1382 = phi i64 [ 0, %1367 ], [ %1506, %1505 ]
  %1383 = call zeroext i1 @extent_scan_read(%struct.extent_scan* nonnull %18) #11
  br i1 %1383, label %1384, label %1388

; <label>:1384:                                   ; preds = %1378
  %1385 = load i64, i64* %1370, align 8
  %1386 = icmp eq i64 %1385, 0
  br i1 %1386, label %1497, label %1387

; <label>:1387:                                   ; preds = %1384
  br label %1400

; <label>:1388:                                   ; preds = %1378
  %1389 = load i8, i8* %1371, align 1
  %1390 = icmp eq i8 %1389, 0
  br i1 %1390, label %1391, label %1513

; <label>:1391:                                   ; preds = %1388
  %1392 = getelementptr inbounds %struct.extent_scan, %struct.extent_scan* %18, i64 0, i32 4
  %1393 = load i8, i8* %1392, align 8
  %1394 = icmp eq i8 %1393, 0
  br i1 %1394, label %1395, label %1569

; <label>:1395:                                   ; preds = %1391
  %1396 = tail call i32* @__errno_location() #1
  %1397 = load i32, i32* %1396, align 4
  %1398 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.65, i64 0, i64 0), i32 5) #11
  %1399 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1397, i8* %1398, i8* %1399) #11
  br label %1571

; <label>:1400:                                   ; preds = %1387, %1491
  %1401 = phi i64 [ %1493, %1491 ], [ 0, %1387 ]
  %1402 = phi i32 [ %1492, %1491 ], [ 0, %1387 ]
  %1403 = phi i64 [ %1488, %1491 ], [ %1382, %1387 ]
  %1404 = phi i64 [ %1486, %1491 ], [ %1380, %1387 ]
  %1405 = phi i64 [ %1485, %1491 ], [ %1379, %1387 ]
  %1406 = load %struct.extent_info*, %struct.extent_info** %1372, align 8
  %1407 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %1406, i64 %1401, i32 0
  %1408 = load i64, i64* %1407, align 8
  %1409 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %1406, i64 %1401, i32 1
  %1410 = load i64, i64* %1409, align 8
  %1411 = add nsw i64 %1410, %1408
  %1412 = icmp sgt i64 %1411, %1363
  br i1 %1412, label %1413, label %1417

; <label>:1413:                                   ; preds = %1400
  %1414 = icmp sgt i64 %1408, %1363
  %1415 = select i1 %1414, i64 %1363, i64 %1408
  %1416 = sub nsw i64 %1363, %1415
  br label %1417

; <label>:1417:                                   ; preds = %1413, %1400
  %1418 = phi i64 [ %1415, %1413 ], [ %1408, %1400 ]
  %1419 = phi i64 [ %1416, %1413 ], [ %1410, %1400 ]
  %1420 = sub nsw i64 %1418, %1403
  %1421 = sub i64 %1420, %1405
  %1422 = icmp eq i64 %1421, 0
  br i1 %1422, label %1471, label %1423

; <label>:1423:                                   ; preds = %1417
  %1424 = call i64 @lseek(i32 %1102, i64 %1418, i32 0) #11
  %1425 = icmp slt i64 %1424, 0
  br i1 %1425, label %1426, label %1437

; <label>:1426:                                   ; preds = %1423
  %1427 = tail call i32* @__errno_location() #1
  %1428 = load i32, i32* %1427, align 4
  %1429 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i64 0, i64 0), i32 5) #11
  %1430 = call i8* @quotearg_style(i32 4, i8* %0) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1428, i8* %1429, i8* %1430) #11
  br label %1431

; <label>:1431:                                   ; preds = %1475, %1466, %1438, %1426
  %1432 = phi i64 [ %1405, %1426 ], [ %1419, %1475 ], [ %1405, %1438 ], [ %1405, %1466 ]
  %1433 = phi i64 [ %1404, %1426 ], [ %1472, %1475 ], [ %1404, %1438 ], [ %1404, %1466 ]
  %1434 = phi i8 [ 0, %1426 ], [ %1473, %1475 ], [ 0, %1438 ], [ 0, %1466 ]
  %1435 = phi i64 [ %1403, %1426 ], [ %1418, %1475 ], [ %1403, %1438 ], [ %1403, %1466 ]
  %1436 = load i8*, i8** %1373, align 8
  call void @free(i8* %1436) #11
  store %struct.extent_info* null, %struct.extent_info** %1372, align 8
  store i64 0, i64* %1370, align 8
  br label %1484

; <label>:1437:                                   ; preds = %1423
  br i1 %1377, label %1440, label %1438

; <label>:1438:                                   ; preds = %1437
  %1439 = call fastcc zeroext i1 @create_hole(i32 %1245, i8* %1, i1 zeroext %1375, i64 %1421) #11
  br i1 %1439, label %1471, label %1431

; <label>:1440:                                   ; preds = %1437
  %1441 = load i8*, i8** @write_zeros.zeros, align 8
  %1442 = icmp eq i8* %1441, null
  br i1 %1442, label %1443, label %1449

; <label>:1443:                                   ; preds = %1440
  %1444 = load i1, i1* @write_zeros.nz, align 8
  %1445 = select i1 %1444, i64 1024, i64 131072
  %1446 = call i8* @rpl_calloc(i64 %1445, i64 1) #11
  store i8* %1446, i8** @write_zeros.zeros, align 8
  %1447 = icmp eq i8* %1446, null
  br i1 %1447, label %1448, label %1449

; <label>:1448:                                   ; preds = %1443
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @write_zeros.fallback, i64 0, i64 0), i8** @write_zeros.zeros, align 8
  store i1 true, i1* @write_zeros.nz, align 8
  br label %1449

; <label>:1449:                                   ; preds = %1440, %1443, %1448
  br label %1450

; <label>:1450:                                   ; preds = %1449, %1453
  %1451 = phi i64 [ %1462, %1453 ], [ %1421, %1449 ]
  %1452 = icmp eq i64 %1451, 0
  br i1 %1452, label %1463, label %1453

; <label>:1453:                                   ; preds = %1450
  %1454 = load i1, i1* @write_zeros.nz, align 8
  %1455 = select i1 %1454, i64 1024, i64 131072
  %1456 = icmp ult i64 %1455, %1451
  %1457 = select i1 %1456, i64 %1455, i64 %1451
  %1458 = load i8*, i8** @write_zeros.zeros, align 8
  %1459 = call i64 @full_write(i32 %1245, i8* %1458, i64 %1457) #11
  %1460 = icmp eq i64 %1459, %1457
  %1461 = select i1 %1460, i64 %1457, i64 0
  %1462 = sub i64 %1451, %1461
  br i1 %1460, label %1450, label %1466

; <label>:1463:                                   ; preds = %1450
  %1464 = icmp sgt i64 %1418, %1363
  %1465 = select i1 %1464, i64 %1363, i64 %1418
  br label %1471

; <label>:1466:                                   ; preds = %1453
  %1467 = tail call i32* @__errno_location() #1
  %1468 = load i32, i32* %1467, align 4
  %1469 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.67, i64 0, i64 0), i32 5) #11
  %1470 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1468, i8* %1469, i8* %1470) #11
  br label %1431

; <label>:1471:                                   ; preds = %1463, %1438, %1417
  %1472 = phi i64 [ %1404, %1417 ], [ %1404, %1438 ], [ %1465, %1463 ]
  %1473 = phi i8 [ 0, %1417 ], [ 1, %1438 ], [ 0, %1463 ]
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1374) #11
  call void @llvm.lifetime.start(i64 1, i8* nonnull %20) #11
  %1474 = call fastcc zeroext i1 @sparse_copy(i32 %1102, i32 %1245, i8* %1360, i64 %1352, i64 %1376, i1 zeroext true, i8* %0, i8* %1, i64 %1419, i64* nonnull %19, i8* nonnull %20) #11
  br i1 %1474, label %1476, label %1475

; <label>:1475:                                   ; preds = %1471
  call void @llvm.lifetime.end(i64 1, i8* nonnull %20) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1374) #11
  br label %1431

; <label>:1476:                                   ; preds = %1471
  %1477 = load i64, i64* %19, align 8
  %1478 = add nsw i64 %1477, %1418
  %1479 = icmp eq i64 %1477, 0
  %1480 = load i8, i8* %20, align 1
  %1481 = select i1 %1479, i8 %1473, i8 %1480
  call void @llvm.lifetime.end(i64 1, i8* nonnull %20) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1374) #11
  %1482 = icmp eq i64 %1478, %1363
  br i1 %1482, label %1483, label %1484

; <label>:1483:                                   ; preds = %1476
  store i8 1, i8* %1371, align 1
  br label %1484

; <label>:1484:                                   ; preds = %1483, %1476, %1431
  %1485 = phi i64 [ %1432, %1431 ], [ %1419, %1483 ], [ %1419, %1476 ]
  %1486 = phi i64 [ %1433, %1431 ], [ %1363, %1483 ], [ %1478, %1476 ]
  %1487 = phi i8 [ %1434, %1431 ], [ %1481, %1483 ], [ %1481, %1476 ]
  %1488 = phi i64 [ %1435, %1431 ], [ %1418, %1483 ], [ %1418, %1476 ]
  %1489 = phi i32 [ 1, %1431 ], [ 4, %1483 ], [ 0, %1476 ]
  %1490 = trunc i32 %1489 to i3
  switch i3 %1490, label %1503 [
    i3 0, label %1491
    i3 -4, label %1496
  ]

; <label>:1491:                                   ; preds = %1484
  %1492 = add i32 %1402, 1
  %1493 = zext i32 %1492 to i64
  %1494 = load i64, i64* %1370, align 8
  %1495 = icmp ult i64 %1493, %1494
  br i1 %1495, label %1400, label %1496

; <label>:1496:                                   ; preds = %1484, %1491
  br label %1497

; <label>:1497:                                   ; preds = %1496, %1384
  %1498 = phi i64 [ %1379, %1384 ], [ %1485, %1496 ]
  %1499 = phi i64 [ %1380, %1384 ], [ %1486, %1496 ]
  %1500 = phi i8 [ %1381, %1384 ], [ %1487, %1496 ]
  %1501 = phi i64 [ %1382, %1384 ], [ %1488, %1496 ]
  %1502 = load i8*, i8** %1373, align 8
  call void @free(i8* %1502) #11
  store %struct.extent_info* null, %struct.extent_info** %1372, align 8
  store i64 0, i64* %1370, align 8
  br label %1505

; <label>:1503:                                   ; preds = %1484
  %1504 = icmp eq i32 %1489, 0
  br i1 %1504, label %1505, label %1570

; <label>:1505:                                   ; preds = %1503, %1497
  %1506 = phi i64 [ %1501, %1497 ], [ %1488, %1503 ]
  %1507 = phi i8 [ %1500, %1497 ], [ %1487, %1503 ]
  %1508 = phi i64 [ %1499, %1497 ], [ %1486, %1503 ]
  %1509 = phi i64 [ %1498, %1497 ], [ %1485, %1503 ]
  %1510 = load i8, i8* %1371, align 1
  %1511 = icmp eq i8 %1510, 0
  br i1 %1511, label %1378, label %1512

; <label>:1512:                                   ; preds = %1505
  br label %1513

; <label>:1513:                                   ; preds = %1512, %1388
  %1514 = phi i8 [ %1381, %1388 ], [ %1507, %1512 ]
  %1515 = phi i64 [ %1380, %1388 ], [ %1508, %1512 ]
  %1516 = icmp sle i64 %1363, %1515
  %1517 = and i8 %1514, 1
  %1518 = icmp eq i8 %1517, 0
  %1519 = and i1 %1516, %1518
  br i1 %1519, label %1555, label %1520

; <label>:1520:                                   ; preds = %1513
  br i1 %1377, label %1524, label %1521

; <label>:1521:                                   ; preds = %1520
  %1522 = call i32 @ftruncate(i32 %1245, i64 %1363) #11
  %1523 = icmp eq i32 %1522, 0
  br i1 %1523, label %1555, label %1549

; <label>:1524:                                   ; preds = %1520
  %1525 = sub nsw i64 %1363, %1515
  %1526 = load i8*, i8** @write_zeros.zeros, align 8
  %1527 = icmp eq i8* %1526, null
  br i1 %1527, label %1528, label %1534

; <label>:1528:                                   ; preds = %1524
  %1529 = load i1, i1* @write_zeros.nz, align 8
  %1530 = select i1 %1529, i64 1024, i64 131072
  %1531 = call i8* @rpl_calloc(i64 %1530, i64 1) #11
  store i8* %1531, i8** @write_zeros.zeros, align 8
  %1532 = icmp eq i8* %1531, null
  br i1 %1532, label %1533, label %1534

; <label>:1533:                                   ; preds = %1528
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @write_zeros.fallback, i64 0, i64 0), i8** @write_zeros.zeros, align 8
  store i1 true, i1* @write_zeros.nz, align 8
  br label %1534

; <label>:1534:                                   ; preds = %1524, %1528, %1533
  br label %1535

; <label>:1535:                                   ; preds = %1534, %1538
  %1536 = phi i64 [ %1547, %1538 ], [ %1525, %1534 ]
  %1537 = icmp eq i64 %1536, 0
  br i1 %1537, label %1554, label %1538

; <label>:1538:                                   ; preds = %1535
  %1539 = load i1, i1* @write_zeros.nz, align 8
  %1540 = select i1 %1539, i64 1024, i64 131072
  %1541 = icmp ult i64 %1540, %1536
  %1542 = select i1 %1541, i64 %1540, i64 %1536
  %1543 = load i8*, i8** @write_zeros.zeros, align 8
  %1544 = call i64 @full_write(i32 %1245, i8* %1543, i64 %1542) #11
  %1545 = icmp eq i64 %1544, %1542
  %1546 = select i1 %1545, i64 %1542, i64 0
  %1547 = sub i64 %1536, %1546
  br i1 %1545, label %1535, label %1548

; <label>:1548:                                   ; preds = %1538
  br label %1549

; <label>:1549:                                   ; preds = %1548, %1521
  %1550 = tail call i32* @__errno_location() #1
  %1551 = load i32, i32* %1550, align 4
  %1552 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0), i32 5) #11
  %1553 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1551, i8* %1552, i8* %1553) #11
  br label %1571

; <label>:1554:                                   ; preds = %1535
  br label %1555

; <label>:1555:                                   ; preds = %1554, %1521, %1513
  %1556 = icmp ne i32 %1368, 3
  %1557 = or i1 %1556, %1516
  br i1 %1557, label %1568, label %1558

; <label>:1558:                                   ; preds = %1555
  %1559 = sub nsw i64 %1363, %1515
  %1560 = call i32 @fallocate(i32 %1245, i32 3, i64 %1515, i64 %1559) #11
  %1561 = icmp slt i32 %1560, 0
  br i1 %1561, label %1562, label %1568

; <label>:1562:                                   ; preds = %1558
  %1563 = tail call i32* @__errno_location() #1
  %1564 = load i32, i32* %1563, align 4
  switch i32 %1564, label %1565 [
    i32 95, label %1568
    i32 38, label %1568
  ]

; <label>:1565:                                   ; preds = %1562
  %1566 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i64 0, i64 0), i32 5) #11
  %1567 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1564, i8* %1566, i8* %1567) #11
  br label %1571

; <label>:1568:                                   ; preds = %1562, %1562, %1558, %1555
  call void @llvm.lifetime.end(i64 48, i8* nonnull %1369) #11
  br label %1593

; <label>:1569:                                   ; preds = %1391
  call void @llvm.lifetime.end(i64 48, i8* nonnull %1369) #11
  br label %1572

; <label>:1570:                                   ; preds = %1503
  br label %1571

; <label>:1571:                                   ; preds = %1570, %1565, %1549, %1395
  call void @llvm.lifetime.end(i64 48, i8* nonnull %1369) #11
  br label %1794

; <label>:1572:                                   ; preds = %1569, %1350
  %1573 = bitcast i64* %24 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1573) #11
  call void @llvm.lifetime.start(i64 1, i8* nonnull %25) #11
  %1574 = select i1 %1351, i64 %1295, i64 0
  %1575 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 3
  %1576 = load i32, i32* %1575, align 4
  %1577 = icmp eq i32 %1576, 3
  %1578 = call fastcc zeroext i1 @sparse_copy(i32 %1102, i32 %1245, i8* %1360, i64 %1352, i64 %1574, i1 zeroext %1577, i8* %0, i8* %1, i64 -1, i64* nonnull %24, i8* nonnull %25) #11
  br i1 %1578, label %1579, label %1592

; <label>:1579:                                   ; preds = %1572
  %1580 = load i8, i8* %25, align 1
  %1581 = icmp eq i8 %1580, 0
  br i1 %1581, label %1591, label %1582

; <label>:1582:                                   ; preds = %1579
  %1583 = load i64, i64* %24, align 8
  %1584 = call i32 @ftruncate(i32 %1245, i64 %1583) #11
  %1585 = icmp slt i32 %1584, 0
  br i1 %1585, label %1586, label %1591

; <label>:1586:                                   ; preds = %1582
  %1587 = tail call i32* @__errno_location() #1
  %1588 = load i32, i32* %1587, align 4
  %1589 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i64 0, i64 0), i32 5) #11
  %1590 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1588, i8* %1589, i8* %1590) #11
  br label %1592

; <label>:1591:                                   ; preds = %1582, %1579
  call void @llvm.lifetime.end(i64 1, i8* nonnull %25) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1573) #11
  br label %1593

; <label>:1592:                                   ; preds = %1586, %1572
  call void @llvm.lifetime.end(i64 1, i8* nonnull %25) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1573) #11
  br label %1794

; <label>:1593:                                   ; preds = %1591, %1568, %1271, %1266
  %1594 = phi i8* [ null, %1266 ], [ %1354, %1568 ], [ %1354, %1591 ], [ null, %1271 ]
  %1595 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 16
  %1596 = load i8, i8* %1595, align 1
  %1597 = icmp eq i8 %1596, 0
  br i1 %1597, label %1622, label %1598

; <label>:1598:                                   ; preds = %1593
  %1599 = bitcast [2 x %struct.timespec]* %26 to i8*
  call void @llvm.lifetime.start(i64 32, i8* nonnull %1599) #11
  %1600 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 11, i32 0
  %1601 = bitcast i64* %1600 to <2 x i64>*
  %1602 = load <2 x i64>, <2 x i64>* %1601, align 8
  %1603 = bitcast [2 x %struct.timespec]* %26 to <2 x i64>*
  store <2 x i64> %1602, <2 x i64>* %1603, align 16
  %1604 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 12, i32 0
  %1605 = bitcast i64* %1604 to <2 x i64>*
  %1606 = load <2 x i64>, <2 x i64>* %1605, align 8
  %1607 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %26, i64 0, i64 1, i32 0
  %1608 = bitcast i64* %1607 to <2 x i64>*
  store <2 x i64> %1606, <2 x i64>* %1608, align 16
  %1609 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %26, i64 0, i64 0
  %1610 = call i32 @fdutimens(i32 %1245, i8* %1, %struct.timespec* nonnull %1609) #11
  %1611 = icmp eq i32 %1610, 0
  br i1 %1611, label %1620, label %1612

; <label>:1612:                                   ; preds = %1598
  %1613 = tail call i32* @__errno_location() #1
  %1614 = load i32, i32* %1613, align 4
  %1615 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45.87, i64 0, i64 0), i32 5) #11
  %1616 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1614, i8* %1615, i8* %1616) #11
  %1617 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 21
  %1618 = load i8, i8* %1617, align 4
  %1619 = icmp eq i8 %1618, 0
  br i1 %1619, label %1620, label %1621

; <label>:1620:                                   ; preds = %1612, %1598
  call void @llvm.lifetime.end(i64 32, i8* nonnull %1599) #11
  br label %1622

; <label>:1621:                                   ; preds = %1612
  call void @llvm.lifetime.end(i64 32, i8* nonnull %1599) #11
  br label %1794

; <label>:1622:                                   ; preds = %1620, %1593
  %1623 = load i8, i8* %825, align 1
  %1624 = icmp eq i8 %1623, 0
  br i1 %1624, label %1642, label %1625

; <label>:1625:                                   ; preds = %1622
  %1626 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 4
  %1627 = load i32, i32* %1626, align 4
  %1628 = getelementptr inbounds %struct.stat, %struct.stat* %21, i64 0, i32 4
  %1629 = load i32, i32* %1628, align 4
  %1630 = icmp eq i32 %1627, %1629
  br i1 %1630, label %1631, label %1637

; <label>:1631:                                   ; preds = %1625
  %1632 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 5
  %1633 = load i32, i32* %1632, align 8
  %1634 = getelementptr inbounds %struct.stat, %struct.stat* %21, i64 0, i32 5
  %1635 = load i32, i32* %1634, align 8
  %1636 = icmp eq i32 %1633, %1635
  br i1 %1636, label %1642, label %1637

; <label>:1637:                                   ; preds = %1631, %1625
  %1638 = icmp ne i8 %1243, 0
  %1639 = call fastcc i32 @set_owner(%struct.cp_options* nonnull %5, i8* %1, i32 %1245, %struct.stat* nonnull %29, i1 zeroext %1638, %struct.stat* nonnull %21) #11
  switch i32 %1639, label %1642 [
    i32 -1, label %1794
    i32 0, label %1640
  ]

; <label>:1640:                                   ; preds = %1637
  %1641 = and i32 %1093, -3585
  br label %1642

; <label>:1642:                                   ; preds = %1640, %1637, %1631, %1622
  %1643 = phi i32 [ %1093, %1631 ], [ %1093, %1637 ], [ %1641, %1640 ], [ %1093, %1622 ]
  %1644 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 24
  %1645 = load i8, i8* %1644, align 1
  %1646 = icmp eq i8 %1645, 0
  br i1 %1646, label %1719, label %1647

; <label>:1647:                                   ; preds = %1642
  %1648 = getelementptr inbounds %struct.stat, %struct.stat* %21, i64 0, i32 3
  %1649 = load i32, i32* %1648, align 8
  %1650 = trunc i32 %1649 to i8
  %1651 = icmp slt i8 %1650, 0
  br i1 %1651, label %1664, label %1652

; <label>:1652:                                   ; preds = %1647
  %1653 = call i32 @geteuid() #11
  %1654 = icmp eq i32 %1653, 0
  br i1 %1654, label %1664, label %1655

; <label>:1655:                                   ; preds = %1652
  %1656 = icmp sgt i32 %1245, -1
  br i1 %1656, label %1657, label %1659

; <label>:1657:                                   ; preds = %1655
  %1658 = call i32 @fchmod(i32 %1245, i32 384) #11
  br label %1661

; <label>:1659:                                   ; preds = %1655
  %1660 = call i32 @chmod(i8* %1, i32 384) #11
  br label %1661

; <label>:1661:                                   ; preds = %1659, %1657
  %1662 = phi i32 [ %1658, %1657 ], [ %1660, %1659 ]
  %1663 = icmp eq i32 %1662, 0
  br label %1664

; <label>:1664:                                   ; preds = %1661, %1652, %1647
  %1665 = phi i1 [ false, %1647 ], [ %1663, %1661 ], [ false, %1652 ]
  %1666 = load i8, i8* %1096, align 1
  %1667 = icmp eq i8 %1666, 0
  br i1 %1667, label %1676, label %1668

; <label>:1668:                                   ; preds = %1664
  %1669 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 25
  %1670 = load i8, i8* %1669, align 8
  %1671 = icmp eq i8 %1670, 0
  br i1 %1671, label %1672, label %1676

; <label>:1672:                                   ; preds = %1668
  %1673 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 26
  %1674 = load i8, i8* %1673, align 1
  %1675 = icmp eq i8 %1674, 0
  br label %1676

; <label>:1676:                                   ; preds = %1672, %1668, %1664
  %1677 = phi i1 [ true, %1668 ], [ false, %1672 ], [ true, %1664 ]
  %1678 = phi i1 [ false, %1668 ], [ %1675, %1672 ], [ false, %1664 ]
  %1679 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 22
  %1680 = load i8, i8* %1679, align 1
  %1681 = icmp eq i8 %1680, 0
  br i1 %1681, label %1682, label %1687

; <label>:1682:                                   ; preds = %1676
  %1683 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 18
  %1684 = load i8, i8* %1683, align 1
  %1685 = icmp ne i8 %1684, 0
  %1686 = select i1 %1685, i32 (i8*, %struct.error_context*)* @check_selinux_attr, i32 (i8*, %struct.error_context*)* null
  br label %1687

; <label>:1687:                                   ; preds = %1682, %1676
  %1688 = phi i32 (i8*, %struct.error_context*)* [ @check_selinux_attr, %1676 ], [ %1686, %1682 ]
  %1689 = bitcast %struct.error_context* %17 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %1689) #11
  %1690 = getelementptr inbounds %struct.error_context, %struct.error_context* %17, i64 0, i32 0
  %1691 = select i1 %1677, void (%struct.error_context*, i8*, ...)* @copy_attr_allerror, void (%struct.error_context*, i8*, ...)* @copy_attr_error
  store void (%struct.error_context*, i8*, ...)* %1691, void (%struct.error_context*, i8*, ...)** %1690, align 8
  %1692 = getelementptr inbounds %struct.error_context, %struct.error_context* %17, i64 0, i32 1
  store i8* (%struct.error_context*, i8*)* @copy_attr_quote, i8* (%struct.error_context*, i8*)** %1692, align 8
  %1693 = getelementptr inbounds %struct.error_context, %struct.error_context* %17, i64 0, i32 2
  store void (%struct.error_context*, i8*)* @copy_attr_free, void (%struct.error_context*, i8*)** %1693, align 8
  %1694 = or i32 %1245, %1102
  %1695 = icmp sgt i32 %1694, -1
  %1696 = or i1 %1677, %1678
  %1697 = select i1 %1696, %struct.error_context* %17, %struct.error_context* null
  br i1 %1695, label %1698, label %1700

; <label>:1698:                                   ; preds = %1687
  %1699 = call i32 @attr_copy_fd(i8* %0, i32 %1102, i8* %1, i32 %1245, i32 (i8*, %struct.error_context*)* %1688, %struct.error_context* %1697) #11
  br label %1702

; <label>:1700:                                   ; preds = %1687
  %1701 = call i32 @attr_copy_file(i8* %0, i8* %1, i32 (i8*, %struct.error_context*)* %1688, %struct.error_context* %1697) #11
  br label %1702

; <label>:1702:                                   ; preds = %1700, %1698
  %1703 = phi i32 [ %1699, %1698 ], [ %1701, %1700 ]
  %1704 = icmp eq i32 %1703, 0
  call void @llvm.lifetime.end(i64 24, i8* nonnull %1689) #11
  br i1 %1704, label %1709, label %1705

; <label>:1705:                                   ; preds = %1702
  %1706 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 25
  %1707 = load i8, i8* %1706, align 8
  %1708 = xor i8 %1707, 1
  br label %1709

; <label>:1709:                                   ; preds = %1705, %1702
  %1710 = phi i8 [ 1, %1702 ], [ %1708, %1705 ]
  br i1 %1665, label %1711, label %1719

; <label>:1711:                                   ; preds = %1709
  %1712 = xor i32 %1246, -1
  %1713 = and i32 %1092, %1712
  %1714 = icmp sgt i32 %1245, -1
  br i1 %1714, label %1715, label %1717

; <label>:1715:                                   ; preds = %1711
  %1716 = call i32 @fchmod(i32 %1245, i32 %1713) #11
  br label %1719

; <label>:1717:                                   ; preds = %1711
  %1718 = call i32 @chmod(i8* %1, i32 %1713) #11
  br label %1719

; <label>:1719:                                   ; preds = %1717, %1715, %1709, %1642
  %1720 = phi i8 [ 1, %1642 ], [ %1710, %1709 ], [ %1710, %1715 ], [ %1710, %1717 ]
  %1721 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 15
  %1722 = load i8, i8* %1721, align 2
  %1723 = icmp eq i8 %1722, 0
  br i1 %1723, label %1724, label %1727

; <label>:1724:                                   ; preds = %1719
  %1725 = load i8, i8* %39, align 8
  %1726 = icmp eq i8 %1725, 0
  br i1 %1726, label %1735, label %1727

; <label>:1727:                                   ; preds = %1724, %1719
  %1728 = call i32 @copy_acl(i8* %0, i32 %1102, i8* %1, i32 %1245, i32 %1643) #11
  %1729 = icmp eq i32 %1728, 0
  br i1 %1729, label %1794, label %1730

; <label>:1730:                                   ; preds = %1727
  %1731 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 21
  %1732 = load i8, i8* %1731, align 4
  %1733 = icmp eq i8 %1732, 0
  %1734 = select i1 %1733, i8 %1720, i8 0
  br label %1794

; <label>:1735:                                   ; preds = %1724
  %1736 = load i8, i8* %816, align 1
  %1737 = icmp eq i8 %1736, 0
  br i1 %1737, label %1744, label %1738

; <label>:1738:                                   ; preds = %1735
  %1739 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 4
  %1740 = load i32, i32* %1739, align 8
  %1741 = call i32 @set_acl(i8* %1, i32 %1245, i32 %1740) #11
  %1742 = icmp eq i32 %1741, 0
  %1743 = select i1 %1742, i8 %1720, i8 0
  br label %1794

; <label>:1744:                                   ; preds = %1735
  %1745 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 17
  %1746 = load i8, i8* %1745, align 8
  %1747 = icmp eq i8 %1746, 0
  br i1 %1747, label %1762, label %1748

; <label>:1748:                                   ; preds = %1744
  %1749 = load i32, i32* @cached_umask.mask, align 4
  %1750 = icmp eq i32 %1749, -1
  br i1 %1750, label %1751, label %1755

; <label>:1751:                                   ; preds = %1748
  %1752 = call i32 @umask(i32 0) #11
  store i32 %1752, i32* @cached_umask.mask, align 4
  %1753 = call i32 @umask(i32 %1752) #11
  %1754 = load i32, i32* @cached_umask.mask, align 4
  br label %1755

; <label>:1755:                                   ; preds = %1751, %1748
  %1756 = phi i32 [ %1754, %1751 ], [ %1749, %1748 ]
  %1757 = and i32 %1756, 438
  %1758 = xor i32 %1757, 438
  %1759 = call i32 @set_acl(i8* %1, i32 %1245, i32 %1758) #11
  %1760 = icmp eq i32 %1759, 0
  %1761 = select i1 %1760, i8 %1720, i8 0
  br label %1794

; <label>:1762:                                   ; preds = %1744
  %1763 = icmp eq i32 %1246, 0
  br i1 %1763, label %1794, label %1764

; <label>:1764:                                   ; preds = %1762
  %1765 = load i32, i32* @cached_umask.mask, align 4
  %1766 = icmp eq i32 %1765, -1
  br i1 %1766, label %1767, label %1771

; <label>:1767:                                   ; preds = %1764
  %1768 = call i32 @umask(i32 0) #11
  store i32 %1768, i32* @cached_umask.mask, align 4
  %1769 = call i32 @umask(i32 %1768) #11
  %1770 = load i32, i32* @cached_umask.mask, align 4
  br label %1771

; <label>:1771:                                   ; preds = %1767, %1764
  %1772 = phi i32 [ %1770, %1767 ], [ %1765, %1764 ]
  %1773 = xor i32 %1772, -1
  %1774 = and i32 %1246, %1773
  %1775 = icmp eq i32 %1774, 0
  br i1 %1775, label %1794, label %1776

; <label>:1776:                                   ; preds = %1771
  %1777 = icmp sgt i32 %1245, -1
  br i1 %1777, label %1778, label %1780

; <label>:1778:                                   ; preds = %1776
  %1779 = call i32 @fchmod(i32 %1245, i32 %1092) #11
  br label %1782

; <label>:1780:                                   ; preds = %1776
  %1781 = call i32 @chmod(i8* %1, i32 %1092) #11
  br label %1782

; <label>:1782:                                   ; preds = %1780, %1778
  %1783 = phi i32 [ %1779, %1778 ], [ %1781, %1780 ]
  %1784 = icmp eq i32 %1783, 0
  br i1 %1784, label %1794, label %1785

; <label>:1785:                                   ; preds = %1782
  %1786 = tail call i32* @__errno_location() #1
  %1787 = load i32, i32* %1786, align 4
  %1788 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.46.88, i64 0, i64 0), i32 5) #11
  %1789 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1787, i8* %1788, i8* %1789) #11
  %1790 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 21
  %1791 = load i8, i8* %1790, align 4
  %1792 = icmp eq i8 %1791, 0
  %1793 = select i1 %1792, i8 %1720, i8 0
  br label %1794

; <label>:1794:                                   ; preds = %1785, %1782, %1771, %1762, %1755, %1738, %1730, %1727, %1637, %1621, %1592, %1571, %1277, %1261, %1160
  %1795 = phi i8 [ %1243, %1762 ], [ %1243, %1771 ], [ %1243, %1782 ], [ %1243, %1785 ], [ %1243, %1755 ], [ %1243, %1738 ], [ %1243, %1727 ], [ %1243, %1730 ], [ %1243, %1637 ], [ %1243, %1621 ], [ %1243, %1571 ], [ %1243, %1592 ], [ %1243, %1277 ], [ %1243, %1261 ], [ 0, %1160 ]
  %1796 = phi i8 [ %1720, %1762 ], [ %1720, %1771 ], [ %1720, %1782 ], [ %1793, %1785 ], [ %1761, %1755 ], [ %1743, %1738 ], [ %1720, %1727 ], [ %1734, %1730 ], [ 0, %1637 ], [ 0, %1621 ], [ 0, %1571 ], [ 0, %1592 ], [ 0, %1277 ], [ 0, %1261 ], [ 0, %1160 ]
  %1797 = phi i32 [ %1245, %1762 ], [ %1245, %1771 ], [ %1245, %1782 ], [ %1245, %1785 ], [ %1245, %1755 ], [ %1245, %1738 ], [ %1245, %1727 ], [ %1245, %1730 ], [ %1245, %1637 ], [ %1245, %1621 ], [ %1245, %1571 ], [ %1245, %1592 ], [ %1245, %1277 ], [ %1245, %1261 ], [ %1138, %1160 ]
  %1798 = phi i8* [ %1594, %1762 ], [ %1594, %1771 ], [ %1594, %1782 ], [ %1594, %1785 ], [ %1594, %1755 ], [ %1594, %1738 ], [ %1594, %1727 ], [ %1594, %1730 ], [ %1594, %1637 ], [ %1594, %1621 ], [ %1354, %1571 ], [ %1354, %1592 ], [ null, %1277 ], [ null, %1261 ], [ null, %1160 ]
  %1799 = call i32 @close(i32 %1797) #11
  %1800 = icmp slt i32 %1799, 0
  br i1 %1800, label %1801, label %1806

; <label>:1801:                                   ; preds = %1794
  %1802 = tail call i32* @__errno_location() #1
  %1803 = load i32, i32* %1802, align 4
  %1804 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i64 0, i64 0), i32 5) #11
  %1805 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1803, i8* %1804, i8* %1805) #11
  br label %1806

; <label>:1806:                                   ; preds = %1801, %1794, %1255, %1239, %1188, %1174, %1129, %1112
  %1807 = phi i8 [ %1191, %1239 ], [ %1243, %1255 ], [ %1795, %1801 ], [ %1795, %1794 ], [ 1, %1188 ], [ 0, %1174 ], [ %815, %1129 ], [ %815, %1112 ]
  %1808 = phi i8 [ 0, %1239 ], [ 0, %1255 ], [ 0, %1801 ], [ %1796, %1794 ], [ 0, %1188 ], [ 0, %1174 ], [ 0, %1129 ], [ 0, %1112 ]
  %1809 = phi i8* [ null, %1239 ], [ null, %1255 ], [ %1798, %1801 ], [ %1798, %1794 ], [ null, %1188 ], [ null, %1174 ], [ null, %1129 ], [ null, %1112 ]
  %1810 = call i32 @close(i32 %1102) #11
  %1811 = icmp slt i32 %1810, 0
  br i1 %1811, label %1812, label %1817

; <label>:1812:                                   ; preds = %1806
  %1813 = tail call i32* @__errno_location() #1
  %1814 = load i32, i32* %1813, align 4
  %1815 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i64 0, i64 0), i32 5) #11
  %1816 = call i8* @quotearg_style(i32 4, i8* %0) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1814, i8* %1815, i8* %1816) #11
  br label %1817

; <label>:1817:                                   ; preds = %1806, %1812
  %1818 = phi i8 [ 0, %1812 ], [ %1808, %1806 ]
  call void @free(i8* %1809) #11
  %1819 = and i8 %1818, 1
  %1820 = icmp eq i8 %1819, 0
  call void @llvm.lifetime.end(i64 144, i8* nonnull %1095) #11
  call void @llvm.lifetime.end(i64 144, i8* nonnull %1094) #11
  br i1 %1820, label %2186, label %1928

; <label>:1821:                                   ; preds = %1085
  %1822 = add nsw i32 %64, -4096
  %1823 = lshr exact i32 %1822, 12
  %1824 = trunc i32 %1823 to i20
  switch i20 %1824, label %1925 [
    i20 0, label %1825
    i20 5, label %1841
    i20 1, label %1841
    i20 11, label %1841
    i20 9, label %1854
  ]

; <label>:1825:                                   ; preds = %1821
  %1826 = xor i32 %830, -1
  %1827 = and i32 %63, %1826
  %1828 = bitcast i64* %16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1828)
  store i64 0, i64* %16, align 8
  %1829 = call i32 @__xmknod(i32 0, i8* nonnull %1, i32 %1827, i64* nonnull %16) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1828)
  %1830 = icmp eq i32 %1829, 0
  br i1 %1830, label %1928, label %1831

; <label>:1831:                                   ; preds = %1825
  %1832 = and i32 %63, -4097
  %1833 = and i32 %1832, %1826
  %1834 = call i32 @mkfifo(i8* %1, i32 %1833) #11
  %1835 = icmp eq i32 %1834, 0
  br i1 %1835, label %1928, label %1836

; <label>:1836:                                   ; preds = %1831
  %1837 = tail call i32* @__errno_location() #1
  %1838 = load i32, i32* %1837, align 4
  %1839 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39.89, i64 0, i64 0), i32 5) #11
  %1840 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1838, i8* %1839, i8* %1840) #11
  br label %2186

; <label>:1841:                                   ; preds = %1821, %1821, %1821
  %1842 = xor i32 %830, -1
  %1843 = and i32 %63, %1842
  %1844 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 7
  %1845 = load i64, i64* %1844, align 8
  %1846 = bitcast i64* %15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %1846)
  store i64 %1845, i64* %15, align 8
  %1847 = call i32 @__xmknod(i32 0, i8* nonnull %1, i32 %1843, i64* nonnull %15) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %1846)
  %1848 = icmp eq i32 %1847, 0
  br i1 %1848, label %1928, label %1849

; <label>:1849:                                   ; preds = %1841
  %1850 = tail call i32* @__errno_location() #1
  %1851 = load i32, i32* %1850, align 4
  %1852 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40.90, i64 0, i64 0), i32 5) #11
  %1853 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1851, i8* %1852, i8* %1853) #11
  br label %2186

; <label>:1854:                                   ; preds = %1821
  %1855 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 8
  %1856 = load i64, i64* %1855, align 8
  %1857 = call i8* @areadlink_with_size(i8* %0, i64 %1856) #11
  %1858 = icmp eq i8* %1857, null
  br i1 %1858, label %1859, label %1864

; <label>:1859:                                   ; preds = %1854
  %1860 = tail call i32* @__errno_location() #1
  %1861 = load i32, i32* %1860, align 4
  %1862 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.41.91, i64 0, i64 0), i32 5) #11
  %1863 = call i8* @quotearg_style(i32 4, i8* %0) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1861, i8* %1862, i8* %1863) #11
  br label %2186

; <label>:1864:                                   ; preds = %1854
  %1865 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 7
  %1866 = load i8, i8* %1865, align 2
  %1867 = icmp ne i8 %1866, 0
  %1868 = call i32 @force_symlinkat(i8* nonnull %1857, i32 -100, i8* %1, i1 zeroext %1867) #11
  %1869 = icmp slt i32 %1868, 0
  br i1 %1869, label %1870, label %1899

; <label>:1870:                                   ; preds = %1864
  %1871 = tail call i32* @__errno_location() #1
  %1872 = load i32, i32* %1871, align 4
  %1873 = icmp eq i32 %1872, 0
  br i1 %1873, label %1899, label %1874

; <label>:1874:                                   ; preds = %1870
  %1875 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 30
  %1876 = load i8, i8* %1875, align 1
  %1877 = icmp ne i8 %1876, 0
  %1878 = icmp eq i8 %815, 0
  %1879 = and i1 %1878, %1877
  br i1 %1879, label %1880, label %1896

; <label>:1880:                                   ; preds = %1874
  %1881 = getelementptr inbounds %struct.stat, %struct.stat* %30, i64 0, i32 3
  %1882 = load i32, i32* %1881, align 8
  %1883 = and i32 %1882, 61440
  %1884 = icmp eq i32 %1883, 40960
  br i1 %1884, label %1885, label %1896

; <label>:1885:                                   ; preds = %1880
  %1886 = getelementptr inbounds %struct.stat, %struct.stat* %30, i64 0, i32 8
  %1887 = load i64, i64* %1886, align 8
  %1888 = call i64 @strlen(i8* nonnull %1857) #14
  %1889 = icmp eq i64 %1887, %1888
  br i1 %1889, label %1890, label %1896

; <label>:1890:                                   ; preds = %1885
  %1891 = call i8* @areadlink_with_size(i8* %1, i64 %1887) #11
  %1892 = icmp eq i8* %1891, null
  br i1 %1892, label %1896, label %1893

; <label>:1893:                                   ; preds = %1890
  %1894 = call i32 @strcmp(i8* nonnull %1891, i8* nonnull %1857) #11
  %1895 = icmp eq i32 %1894, 0
  call void @free(i8* nonnull %1891) #11
  br i1 %1895, label %1899, label %1896

; <label>:1896:                                   ; preds = %1885, %1880, %1874, %1893, %1890
  call void @free(i8* nonnull %1857) #11
  %1897 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42.92, i64 0, i64 0), i32 5) #11
  %1898 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1872, i8* %1897, i8* %1898) #11
  br label %2186

; <label>:1899:                                   ; preds = %1893, %1864, %1870
  call void @free(i8* nonnull %1857) #11
  %1900 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 22
  %1901 = load i8, i8* %1900, align 1
  %1902 = icmp eq i8 %1901, 0
  br i1 %1902, label %1906, label %1903

; <label>:1903:                                   ; preds = %1899
  %1904 = tail call i32* @__errno_location() #1
  store i32 95, i32* %1904, align 4
  %1905 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.72, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 95, i8* %1905) #11
  unreachable

; <label>:1906:                                   ; preds = %1899
  %1907 = load i8, i8* %825, align 1
  %1908 = icmp eq i8 %1907, 0
  br i1 %1908, label %1928, label %1909

; <label>:1909:                                   ; preds = %1906
  %1910 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 4
  %1911 = load i32, i32* %1910, align 4
  %1912 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 5
  %1913 = load i32, i32* %1912, align 8
  %1914 = call i32 @lchown(i8* %1, i32 %1911, i32 %1913) #11
  %1915 = icmp eq i32 %1914, 0
  br i1 %1915, label %1928, label %1916

; <label>:1916:                                   ; preds = %1909
  %1917 = tail call i32* @__errno_location() #1
  %1918 = load i32, i32* %1917, align 4
  switch i32 %1918, label %1923 [
    i32 1, label %1919
    i32 22, label %1919
  ]

; <label>:1919:                                   ; preds = %1916, %1916
  %1920 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 11
  %1921 = load i8, i8* %1920, align 2
  %1922 = icmp eq i8 %1921, 0
  br i1 %1922, label %1928, label %1923

; <label>:1923:                                   ; preds = %1916, %1919
  %1924 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.43.93, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %1918, i8* %1924, i8* %1) #11
  br label %2186

; <label>:1925:                                   ; preds = %1821
  %1926 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44.94, i64 0, i64 0), i32 5) #11
  %1927 = call i8* @quotearg_style(i32 4, i8* %0) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %1926, i8* %1927) #11
  br label %2186

; <label>:1928:                                   ; preds = %1817, %1919, %1906, %1909, %961, %1016, %1831, %1825, %1841, %1062, %1078
  %1929 = phi i8 [ %1807, %1817 ], [ %815, %1841 ], [ %815, %1825 ], [ %815, %1831 ], [ %815, %1078 ], [ %815, %1062 ], [ %815, %1016 ], [ %815, %961 ], [ %815, %1909 ], [ %815, %1906 ], [ %815, %1919 ]
  %1930 = phi i1 [ false, %1817 ], [ false, %1841 ], [ false, %1825 ], [ false, %1831 ], [ false, %1078 ], [ true, %1062 ], [ false, %1016 ], [ false, %961 ], [ true, %1909 ], [ true, %1906 ], [ true, %1919 ]
  %1931 = phi i1 [ true, %1817 ], [ false, %1841 ], [ false, %1825 ], [ false, %1831 ], [ false, %1078 ], [ false, %1062 ], [ false, %1016 ], [ false, %961 ], [ false, %1909 ], [ false, %1906 ], [ false, %1919 ]
  %1932 = phi i8 [ 1, %1817 ], [ 1, %1841 ], [ 1, %1825 ], [ 1, %1831 ], [ 1, %1078 ], [ 1, %1062 ], [ %1018, %1016 ], [ 1, %961 ], [ 1, %1909 ], [ 1, %1906 ], [ 1, %1919 ]
  %1933 = phi i8 [ 0, %1817 ], [ 0, %1841 ], [ 0, %1825 ], [ 0, %1831 ], [ 0, %1078 ], [ 0, %1062 ], [ %953, %1016 ], [ %953, %961 ], [ 0, %1909 ], [ 0, %1906 ], [ 0, %1919 ]
  %1934 = phi i32 [ %830, %1817 ], [ %830, %1841 ], [ %830, %1825 ], [ %830, %1831 ], [ %830, %1078 ], [ %830, %1062 ], [ %954, %1016 ], [ %954, %961 ], [ %830, %1909 ], [ %830, %1906 ], [ %830, %1919 ]
  %1935 = phi i32 [ undef, %1817 ], [ undef, %1841 ], [ undef, %1825 ], [ undef, %1831 ], [ undef, %1078 ], [ undef, %1062 ], [ %955, %1016 ], [ %955, %961 ], [ undef, %1909 ], [ undef, %1906 ], [ undef, %1919 ]
  %1936 = icmp eq i8 %1929, 0
  br i1 %1936, label %1937, label %1966

; <label>:1937:                                   ; preds = %1928
  %1938 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 5
  %1939 = load i8, i8* %1938, align 4
  %1940 = icmp ne i8 %1939, 0
  %1941 = or i1 %65, %1940
  br i1 %1941, label %1966, label %1942

; <label>:1942:                                   ; preds = %1937
  %1943 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 18
  %1944 = load i8, i8* %1943, align 1
  %1945 = icmp eq i8 %1944, 0
  br i1 %1945, label %1946, label %1950

; <label>:1946:                                   ; preds = %1942
  %1947 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 22
  %1948 = load i8, i8* %1947, align 1
  %1949 = icmp eq i8 %1948, 0
  br i1 %1949, label %1966, label %1950

; <label>:1950:                                   ; preds = %1946, %1942
  %1951 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 20
  %1952 = load i8, i8* %1951, align 1
  %1953 = icmp eq i8 %1952, 0
  %1954 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 23
  br i1 %1953, label %1960, label %1955

; <label>:1955:                                   ; preds = %1950
  %1956 = load i8, i8* %1954, align 2
  %1957 = icmp eq i8 %1956, 0
  br i1 %1957, label %1958, label %1960

; <label>:1958:                                   ; preds = %1955
  %1959 = tail call i32* @__errno_location() #1
  store i32 95, i32* %1959, align 4
  br label %1966

; <label>:1960:                                   ; preds = %1950, %1955
  %1961 = tail call i32* @__errno_location() #1
  store i32 95, i32* %1961, align 4
  %1962 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3.55, i64 0, i64 0), i32 5) #11
  %1963 = call i8* @quotearg_n_style(i32 0, i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 95, i8* %1962, i8* %1963) #11
  %1964 = load i8, i8* %1954, align 2
  %1965 = icmp eq i8 %1964, 0
  br i1 %1965, label %1966, label %2186

; <label>:1966:                                   ; preds = %1958, %1937, %1960, %1946, %1928
  br i1 %6, label %1967, label %1978

; <label>:1967:                                   ; preds = %1966
  %1968 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 35
  %1969 = load %struct.hash_table*, %struct.hash_table** %1968, align 8
  %1970 = icmp eq %struct.hash_table* %1969, null
  br i1 %1970, label %1978, label %1971

; <label>:1971:                                   ; preds = %1967
  %1972 = bitcast %struct.stat* %34 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %1972) #11
  %1973 = call i32 @__lxstat(i32 1, i8* nonnull %1, %struct.stat* nonnull %34) #11
  %1974 = icmp eq i32 %1973, 0
  br i1 %1974, label %1975, label %1977

; <label>:1975:                                   ; preds = %1971
  %1976 = load %struct.hash_table*, %struct.hash_table** %1968, align 8
  call void @record_file(%struct.hash_table* %1976, i8* %1, %struct.stat* nonnull %34) #11
  br label %1977

; <label>:1977:                                   ; preds = %1975, %1971
  call void @llvm.lifetime.end(i64 144, i8* nonnull %1972) #11
  br label %1978

; <label>:1978:                                   ; preds = %1967, %1977, %1966
  %1979 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 8
  %1980 = load i8, i8* %1979, align 1
  %1981 = icmp eq i8 %1980, 0
  %1982 = or i1 %65, %1981
  br i1 %1982, label %1985, label %1983

; <label>:1983:                                   ; preds = %1978
  %1984 = icmp ne i8 %1932, 0
  br label %2221

; <label>:1985:                                   ; preds = %1978
  br i1 %1931, label %1986, label %1988

; <label>:1986:                                   ; preds = %1985
  %1987 = icmp ne i8 %1932, 0
  br label %2221

; <label>:1988:                                   ; preds = %1985
  %1989 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 16
  %1990 = load i8, i8* %1989, align 1
  %1991 = icmp eq i8 %1990, 0
  br i1 %1991, label %2026, label %1992

; <label>:1992:                                   ; preds = %1988
  %1993 = bitcast [2 x %struct.timespec]* %35 to i8*
  call void @llvm.lifetime.start(i64 32, i8* nonnull %1993) #11
  %1994 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 11, i32 0
  %1995 = bitcast i64* %1994 to <2 x i64>*
  %1996 = load <2 x i64>, <2 x i64>* %1995, align 8
  %1997 = bitcast [2 x %struct.timespec]* %35 to <2 x i64>*
  store <2 x i64> %1996, <2 x i64>* %1997, align 16
  %1998 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 12, i32 0
  %1999 = bitcast i64* %1998 to <2 x i64>*
  %2000 = load <2 x i64>, <2 x i64>* %1999, align 8
  %2001 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %35, i64 0, i64 1, i32 0
  %2002 = bitcast i64* %2001 to <2 x i64>*
  store <2 x i64> %2000, <2 x i64>* %2002, align 16
  %2003 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %35, i64 0, i64 0
  br i1 %1930, label %2004, label %2011

; <label>:2004:                                   ; preds = %1992
  %2005 = call i32 @lutimens(i8* %1, %struct.timespec* nonnull %2003) #11
  %2006 = icmp eq i32 %2005, 0
  br i1 %2006, label %2024, label %2007

; <label>:2007:                                   ; preds = %2004
  %2008 = tail call i32* @__errno_location() #1
  %2009 = load i32, i32* %2008, align 4
  %2010 = icmp eq i32 %2009, 38
  br i1 %2010, label %2024, label %2016

; <label>:2011:                                   ; preds = %1992
  %2012 = call i32 @utimens(i8* %1, %struct.timespec* nonnull %2003) #11
  %2013 = icmp eq i32 %2012, 0
  br i1 %2013, label %2024, label %2014

; <label>:2014:                                   ; preds = %2011
  %2015 = tail call i32* @__errno_location() #1
  br label %2016

; <label>:2016:                                   ; preds = %2014, %2007
  %2017 = phi i32* [ %2015, %2014 ], [ %2008, %2007 ]
  %2018 = load i32, i32* %2017, align 4
  %2019 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45.87, i64 0, i64 0), i32 5) #11
  %2020 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %2018, i8* %2019, i8* %2020) #11
  %2021 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 21
  %2022 = load i8, i8* %2021, align 4
  %2023 = icmp eq i8 %2022, 0
  br i1 %2023, label %2024, label %2025

; <label>:2024:                                   ; preds = %2011, %2016, %2004, %2007
  call void @llvm.lifetime.end(i64 32, i8* nonnull %1993) #11
  br label %2026

; <label>:2025:                                   ; preds = %2016
  call void @llvm.lifetime.end(i64 32, i8* nonnull %1993) #11
  br label %2221

; <label>:2026:                                   ; preds = %2024, %1988
  br i1 %1930, label %2048, label %2027

; <label>:2027:                                   ; preds = %2026
  %2028 = load i8, i8* %825, align 1
  %2029 = icmp eq i8 %2028, 0
  br i1 %2029, label %2048, label %2030

; <label>:2030:                                   ; preds = %2027
  br i1 %1936, label %2031, label %2043

; <label>:2031:                                   ; preds = %2030
  %2032 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 4
  %2033 = load i32, i32* %2032, align 4
  %2034 = getelementptr inbounds %struct.stat, %struct.stat* %30, i64 0, i32 4
  %2035 = load i32, i32* %2034, align 4
  %2036 = icmp eq i32 %2033, %2035
  br i1 %2036, label %2037, label %2043

; <label>:2037:                                   ; preds = %2031
  %2038 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 5
  %2039 = load i32, i32* %2038, align 8
  %2040 = getelementptr inbounds %struct.stat, %struct.stat* %30, i64 0, i32 5
  %2041 = load i32, i32* %2040, align 8
  %2042 = icmp eq i32 %2039, %2041
  br i1 %2042, label %2048, label %2043

; <label>:2043:                                   ; preds = %2030, %2037, %2031
  %2044 = icmp ne i8 %1929, 0
  %2045 = call fastcc i32 @set_owner(%struct.cp_options* nonnull %5, i8* %1, i32 -1, %struct.stat* nonnull %29, i1 zeroext %2044, %struct.stat* nonnull %30)
  switch i32 %2045, label %2048 [
    i32 -1, label %2221
    i32 0, label %2046
  ]

; <label>:2046:                                   ; preds = %2043
  %2047 = and i32 %63, -3585
  br label %2048

; <label>:2048:                                   ; preds = %2027, %2046, %2043, %2037, %2026
  %2049 = phi i32 [ %63, %2026 ], [ %63, %2043 ], [ %2047, %2046 ], [ %63, %2037 ], [ %63, %2027 ]
  %2050 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 24
  %2051 = load i8, i8* %2050, align 1
  %2052 = icmp eq i8 %2051, 0
  br i1 %2052, label %2091, label %2053

; <label>:2053:                                   ; preds = %2048
  %2054 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 20
  %2055 = load i8, i8* %2054, align 1
  %2056 = icmp eq i8 %2055, 0
  br i1 %2056, label %2065, label %2057

; <label>:2057:                                   ; preds = %2053
  %2058 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 25
  %2059 = load i8, i8* %2058, align 8
  %2060 = icmp eq i8 %2059, 0
  br i1 %2060, label %2061, label %2065

; <label>:2061:                                   ; preds = %2057
  %2062 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 26
  %2063 = load i8, i8* %2062, align 1
  %2064 = icmp eq i8 %2063, 0
  br label %2065

; <label>:2065:                                   ; preds = %2061, %2057, %2053
  %2066 = phi i1 [ true, %2057 ], [ false, %2061 ], [ true, %2053 ]
  %2067 = phi i1 [ false, %2057 ], [ %2064, %2061 ], [ false, %2053 ]
  %2068 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 22
  %2069 = load i8, i8* %2068, align 1
  %2070 = icmp eq i8 %2069, 0
  br i1 %2070, label %2071, label %2076

; <label>:2071:                                   ; preds = %2065
  %2072 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 18
  %2073 = load i8, i8* %2072, align 1
  %2074 = icmp ne i8 %2073, 0
  %2075 = select i1 %2074, i32 (i8*, %struct.error_context*)* @check_selinux_attr, i32 (i8*, %struct.error_context*)* null
  br label %2076

; <label>:2076:                                   ; preds = %2065, %2071
  %2077 = phi i32 (i8*, %struct.error_context*)* [ @check_selinux_attr, %2065 ], [ %2075, %2071 ]
  %2078 = bitcast %struct.error_context* %14 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %2078) #11
  %2079 = getelementptr inbounds %struct.error_context, %struct.error_context* %14, i64 0, i32 0
  %2080 = select i1 %2066, void (%struct.error_context*, i8*, ...)* @copy_attr_allerror, void (%struct.error_context*, i8*, ...)* @copy_attr_error
  store void (%struct.error_context*, i8*, ...)* %2080, void (%struct.error_context*, i8*, ...)** %2079, align 8
  %2081 = getelementptr inbounds %struct.error_context, %struct.error_context* %14, i64 0, i32 1
  store i8* (%struct.error_context*, i8*)* @copy_attr_quote, i8* (%struct.error_context*, i8*)** %2081, align 8
  %2082 = getelementptr inbounds %struct.error_context, %struct.error_context* %14, i64 0, i32 2
  store void (%struct.error_context*, i8*)* @copy_attr_free, void (%struct.error_context*, i8*)** %2082, align 8
  %2083 = or i1 %2066, %2067
  %2084 = select i1 %2083, %struct.error_context* %14, %struct.error_context* null
  %2085 = call i32 @attr_copy_file(i8* %0, i8* %1, i32 (i8*, %struct.error_context*)* %2077, %struct.error_context* %2084) #11
  %2086 = icmp eq i32 %2085, 0
  call void @llvm.lifetime.end(i64 24, i8* nonnull %2078) #11
  br i1 %2086, label %2091, label %2087

; <label>:2087:                                   ; preds = %2076
  %2088 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 25
  %2089 = load i8, i8* %2088, align 8
  %2090 = icmp eq i8 %2089, 0
  br i1 %2090, label %2091, label %2221

; <label>:2091:                                   ; preds = %2087, %2048, %2076
  br i1 %1930, label %2092, label %2094

; <label>:2092:                                   ; preds = %2091
  %2093 = icmp ne i8 %1932, 0
  br label %2221

; <label>:2094:                                   ; preds = %2091
  %2095 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 15
  %2096 = load i8, i8* %2095, align 2
  %2097 = icmp eq i8 %2096, 0
  br i1 %2097, label %2098, label %2101

; <label>:2098:                                   ; preds = %2094
  %2099 = load i8, i8* %39, align 8
  %2100 = icmp eq i8 %2099, 0
  br i1 %2100, label %2108, label %2101

; <label>:2101:                                   ; preds = %2098, %2094
  %2102 = call i32 @copy_acl(i8* %0, i32 -1, i8* %1, i32 -1, i32 %2049) #11
  %2103 = icmp eq i32 %2102, 0
  br i1 %2103, label %2184, label %2104

; <label>:2104:                                   ; preds = %2101
  %2105 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 21
  %2106 = load i8, i8* %2105, align 4
  %2107 = icmp eq i8 %2106, 0
  br i1 %2107, label %2184, label %2221

; <label>:2108:                                   ; preds = %2098
  %2109 = load i8, i8* %816, align 1
  %2110 = icmp eq i8 %2109, 0
  br i1 %2110, label %2116, label %2111

; <label>:2111:                                   ; preds = %2108
  %2112 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 4
  %2113 = load i32, i32* %2112, align 8
  %2114 = call i32 @set_acl(i8* %1, i32 -1, i32 %2113) #11
  %2115 = icmp eq i32 %2114, 0
  br i1 %2115, label %2184, label %2221

; <label>:2116:                                   ; preds = %2108
  %2117 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 17
  %2118 = load i8, i8* %2117, align 8
  %2119 = icmp eq i8 %2118, 0
  br i1 %2119, label %2133, label %2120

; <label>:2120:                                   ; preds = %2116
  %2121 = load i32, i32* @cached_umask.mask, align 4
  %2122 = icmp eq i32 %2121, -1
  br i1 %2122, label %2123, label %2127

; <label>:2123:                                   ; preds = %2120
  %2124 = call i32 @umask(i32 0) #11
  store i32 %2124, i32* @cached_umask.mask, align 4
  %2125 = call i32 @umask(i32 %2124) #11
  %2126 = load i32, i32* @cached_umask.mask, align 4
  br label %2127

; <label>:2127:                                   ; preds = %2120, %2123
  %2128 = phi i32 [ %2126, %2123 ], [ %2121, %2120 ]
  %2129 = and i32 %2128, 511
  %2130 = xor i32 %2129, 511
  %2131 = call i32 @set_acl(i8* %1, i32 -1, i32 %2130) #11
  %2132 = icmp eq i32 %2131, 0
  br i1 %2132, label %2184, label %2221

; <label>:2133:                                   ; preds = %2116
  %2134 = icmp eq i32 %1934, 0
  br i1 %2134, label %2166, label %2135

; <label>:2135:                                   ; preds = %2133
  %2136 = load i32, i32* @cached_umask.mask, align 4
  %2137 = icmp eq i32 %2136, -1
  br i1 %2137, label %2138, label %2142

; <label>:2138:                                   ; preds = %2135
  %2139 = call i32 @umask(i32 0) #11
  store i32 %2139, i32* @cached_umask.mask, align 4
  %2140 = call i32 @umask(i32 %2139) #11
  %2141 = load i32, i32* @cached_umask.mask, align 4
  br label %2142

; <label>:2142:                                   ; preds = %2135, %2138
  %2143 = phi i32 [ %2141, %2138 ], [ %2136, %2135 ]
  %2144 = xor i32 %2143, -1
  %2145 = and i32 %1934, %2144
  %2146 = icmp ne i32 %2145, 0
  %2147 = and i8 %1933, 1
  %2148 = icmp eq i8 %2147, 0
  %2149 = and i1 %2148, %2146
  br i1 %2149, label %2150, label %2166

; <label>:2150:                                   ; preds = %2142
  br i1 %1936, label %2159, label %2151

; <label>:2151:                                   ; preds = %2150
  %2152 = call i32 @__lxstat(i32 1, i8* nonnull %1, %struct.stat* nonnull %30) #11
  %2153 = icmp eq i32 %2152, 0
  br i1 %2153, label %2159, label %2154

; <label>:2154:                                   ; preds = %2151
  %2155 = tail call i32* @__errno_location() #1
  %2156 = load i32, i32* %2155, align 4
  %2157 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12.60, i64 0, i64 0), i32 5) #11
  %2158 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %2156, i8* %2157, i8* %2158) #11
  br label %2221

; <label>:2159:                                   ; preds = %2151, %2150
  %2160 = getelementptr inbounds %struct.stat, %struct.stat* %30, i64 0, i32 3
  %2161 = load i32, i32* %2160, align 8
  %2162 = xor i32 %2161, -1
  %2163 = and i32 %2145, %2162
  %2164 = icmp eq i32 %2163, 0
  %2165 = select i1 %2164, i8 %1933, i8 1
  br label %2166

; <label>:2166:                                   ; preds = %2159, %2142, %2133
  %2167 = phi i8 [ %1933, %2142 ], [ %1933, %2133 ], [ %2165, %2159 ]
  %2168 = phi i32 [ %2145, %2142 ], [ 0, %2133 ], [ %2145, %2159 ]
  %2169 = phi i32 [ %1935, %2142 ], [ %1935, %2133 ], [ %2161, %2159 ]
  %2170 = and i8 %2167, 1
  %2171 = icmp eq i8 %2170, 0
  br i1 %2171, label %2184, label %2172

; <label>:2172:                                   ; preds = %2166
  %2173 = or i32 %2169, %2168
  %2174 = call i32 @chmod(i8* %1, i32 %2173) #11
  %2175 = icmp eq i32 %2174, 0
  br i1 %2175, label %2184, label %2176

; <label>:2176:                                   ; preds = %2172
  %2177 = tail call i32* @__errno_location() #1
  %2178 = load i32, i32* %2177, align 4
  %2179 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.46.88, i64 0, i64 0), i32 5) #11
  %2180 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %2178, i8* %2179, i8* %2180) #11
  %2181 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 21
  %2182 = load i8, i8* %2181, align 4
  %2183 = icmp eq i8 %2182, 0
  br i1 %2183, label %2184, label %2221

; <label>:2184:                                   ; preds = %2104, %2101, %2111, %2127, %2176, %2172, %2166
  %2185 = icmp ne i8 %1932, 0
  br label %2221

; <label>:2186:                                   ; preds = %1817, %946, %896, %882, %874, %854, %1859, %1923, %1896, %1104, %1059, %419, %1960, %1078, %736, %1925, %1849, %1836, %1068, %732, %710
  %2187 = phi i8* [ %612, %710 ], [ %612, %1960 ], [ %612, %1059 ], [ %612, %1068 ], [ %612, %1078 ], [ %612, %1817 ], [ %612, %1836 ], [ %612, %1849 ], [ %612, %1925 ], [ %612, %732 ], [ %612, %736 ], [ null, %419 ], [ %612, %1104 ], [ %612, %1896 ], [ %612, %1923 ], [ %612, %1859 ], [ %612, %854 ], [ %612, %874 ], [ %612, %882 ], [ %612, %896 ], [ %612, %946 ]
  %2188 = phi i8* [ %705, %710 ], [ %741, %1960 ], [ %741, %1059 ], [ %741, %1068 ], [ %741, %1078 ], [ %741, %1817 ], [ %741, %1836 ], [ %741, %1849 ], [ %741, %1925 ], [ %705, %732 ], [ %705, %736 ], [ %417, %419 ], [ %741, %1104 ], [ %741, %1896 ], [ %741, %1923 ], [ %741, %1859 ], [ %741, %854 ], [ %741, %874 ], [ %741, %882 ], [ %741, %896 ], [ %741, %946 ]
  %2189 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 22
  %2190 = load i8, i8* %2189, align 1
  %2191 = icmp eq i8 %2190, 0
  br i1 %2191, label %2195, label %2192

; <label>:2192:                                   ; preds = %2186
  %2193 = tail call i32* @__errno_location() #1
  store i32 95, i32* %2193, align 4
  %2194 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.72, i64 0, i64 0), i32 5) #11
  call void (i32, i32, i8*, ...) @error(i32 1, i32 95, i8* %2194) #11
  unreachable

; <label>:2195:                                   ; preds = %2186
  %2196 = icmp eq i8* %2188, null
  br i1 %2196, label %2197, label %2202

; <label>:2197:                                   ; preds = %2195
  %2198 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 1
  %2199 = load i64, i64* %2198, align 8
  %2200 = getelementptr inbounds %struct.stat, %struct.stat* %29, i64 0, i32 0
  %2201 = load i64, i64* %2200, align 8
  call void @forget_created(i64 %2199, i64 %2201) #11
  br label %2202

; <label>:2202:                                   ; preds = %2197, %2195
  %2203 = icmp eq i8* %2187, null
  br i1 %2203, label %2221, label %2204

; <label>:2204:                                   ; preds = %2202
  %2205 = call i32 @rename(i8* nonnull %2187, i8* %1) #11
  %2206 = icmp eq i32 %2205, 0
  br i1 %2206, label %2212, label %2207

; <label>:2207:                                   ; preds = %2204
  %2208 = tail call i32* @__errno_location() #1
  %2209 = load i32, i32* %2208, align 4
  %2210 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47.95, i64 0, i64 0), i32 5) #11
  %2211 = call i8* @quotearg_style(i32 4, i8* %1) #11
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %2209, i8* %2210, i8* %2211) #11
  br label %2221

; <label>:2212:                                   ; preds = %2204
  %2213 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %5, i64 0, i32 31
  %2214 = load i8, i8* %2213, align 2
  %2215 = icmp eq i8 %2214, 0
  br i1 %2215, label %2221, label %2216

; <label>:2216:                                   ; preds = %2212
  %2217 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48.96, i64 0, i64 0), i32 5) #11
  %2218 = call i8* @quotearg_n_style(i32 0, i32 4, i8* nonnull %2187) #11
  %2219 = call i8* @quotearg_n_style(i32 1, i32 4, i8* %1) #11
  %2220 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %2217, i8* %2218, i8* %2219) #11
  br label %2221

; <label>:2221:                                   ; preds = %597, %518, %500, %484, %471, %380, %447, %446, %449, %452, %456, %546, %563, %413, %419, %2025, %640, %140, %781, %787, %806, %1983, %1986, %2092, %2154, %2184, %725, %718, %736, %775, %774, %822, %2043, %2087, %2104, %2111, %2127, %2176, %2212, %2202, %2207, %2216, %87, %70, %56
  %2222 = phi i1 [ false, %56 ], [ true, %87 ], [ false, %70 ], [ true, %781 ], [ false, %787 ], [ false, %806 ], [ %1987, %1986 ], [ %2093, %2092 ], [ %2185, %2184 ], [ false, %2154 ], [ false, %2025 ], [ %1984, %1983 ], [ false, %640 ], [ true, %725 ], [ true, %718 ], [ true, %736 ], [ true, %775 ], [ true, %774 ], [ false, %822 ], [ false, %2043 ], [ false, %2087 ], [ false, %2104 ], [ false, %2111 ], [ false, %2127 ], [ false, %2176 ], [ false, %2212 ], [ false, %2202 ], [ false, %2207 ], [ false, %2216 ], [ false, %140 ], [ true, %419 ], [ true, %413 ], [ false, %597 ], [ false, %518 ], [ false, %500 ], [ false, %484 ], [ false, %471 ], [ false, %380 ], [ true, %447 ], [ true, %446 ], [ true, %449 ], [ true, %452 ], [ true, %456 ], [ false, %546 ], [ false, %563 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %38) #11
  call void @llvm.lifetime.end(i64 144, i8* nonnull %37) #11
  ret i1 %2222
}

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @canonicalize_file_name(i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @create_hard_link(i8*, i8*, i1 zeroext, i1 zeroext, i1 zeroext) unnamed_addr #6 {
  %6 = select i1 %4, i32 1024, i32 0
  %7 = tail call i32 @force_linkat(i32 -100, i8* %0, i32 -100, i8* %1, i32 %6, i1 zeroext %2) #11
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %15

; <label>:9:                                      ; preds = %5
  %10 = tail call i32* @__errno_location() #1
  %11 = load i32, i32* %10, align 4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49.101, i64 0, i64 0), i32 5) #11
  %13 = tail call i8* @quotearg_n_style(i32 0, i32 4, i8* %1) #11
  %14 = tail call i8* @quotearg_n_style(i32 1, i32 4, i8* %0) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %11, i8* %12, i8* %13, i8* %14) #11
  br label %23

; <label>:15:                                     ; preds = %5
  %16 = icmp eq i32 %7, 0
  %17 = xor i1 %3, true
  %18 = or i1 %16, %17
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %15
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25.73, i64 0, i64 0), i32 5) #11
  %21 = tail call i8* @quotearg_style(i32 4, i8* %1) #11
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %20, i8* %21) #11
  br label %23

; <label>:23:                                     ; preds = %19, %15, %9
  %24 = phi i1 [ false, %9 ], [ true, %15 ], [ true, %19 ]
  ret i1 %24
}

; Function Attrs: nounwind
declare i32 @euidaccess(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @overwrite_ok(%struct.cp_options* nocapture readonly, i8*, %struct.stat* nocapture readonly) unnamed_addr #6 {
  %4 = alloca [12 x i8], align 1
  %5 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, 61440
  %8 = icmp eq i32 %7, 40960
  br i1 %8, label %41, label %9

; <label>:9:                                      ; preds = %3
  %10 = tail call zeroext i1 @can_write_any_file() #11
  br i1 %10, label %41, label %11

; <label>:11:                                     ; preds = %9
  %12 = tail call i32 @euidaccess(i8* %1, i32 2) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %41, label %14

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 12, i8* nonnull %15) #11
  %16 = load i32, i32* %5, align 8
  call void @strmode(i32 %16, i8* nonnull %15) #11
  %17 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 10
  store i8 0, i8* %17, align 1
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %0, i64 0, i32 9
  %20 = load i8, i8* %19, align 8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %14
  %23 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %0, i64 0, i32 6
  %24 = load i8, i8* %23, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

; <label>:26:                                     ; preds = %22
  %27 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %0, i64 0, i32 7
  %28 = load i8, i8* %27, align 2
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30

; <label>:30:                                     ; preds = %26, %22, %14
  br label %31

; <label>:31:                                     ; preds = %26, %30
  %32 = phi i8* [ getelementptr inbounds ([45 x i8], [45 x i8]* @.str.51.98, i64 0, i64 0), %30 ], [ getelementptr inbounds ([49 x i8], [49 x i8]* @.str.52.99, i64 0, i64 0), %26 ]
  %33 = call i8* @dcgettext(i8* null, i8* nonnull %32, i32 5) #11
  %34 = load i8*, i8** @program_name, align 8
  %35 = call i8* @quotearg_style(i32 4, i8* %1) #11
  %36 = load i32, i32* %5, align 8
  %37 = and i32 %36, 4095
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 1
  %40 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %18, i32 1, i8* %33, i8* %34, i8* %35, i64 %38, i8* %39) #11
  call void @llvm.lifetime.end(i64 12, i8* nonnull %15) #11
  br label %47

; <label>:41:                                     ; preds = %3, %9, %11
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53.100, i64 0, i64 0), i32 5) #11
  %44 = load i8*, i8** @program_name, align 8
  %45 = tail call i8* @quotearg_style(i32 4, i8* %1) #11
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %42, i32 1, i8* %43, i8* %44, i8* %45) #11
  br label %47

; <label>:47:                                     ; preds = %41, %31
  %48 = call zeroext i1 @yesno() #11
  ret i1 %48
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @rename(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @unlink(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @emit_verbose(i8*, i8*, i8*) unnamed_addr #6 {
  %4 = tail call i8* @quotearg_n_style(i32 0, i32 4, i8* %0) #11
  %5 = tail call i8* @quotearg_n_style(i32 1, i32 4, i8* %1) #11
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54.80, i64 0, i64 0), i8* %4, i8* %5) #11
  %7 = icmp eq i8* %2, null
  br i1 %7, label %12, label %8

; <label>:8:                                      ; preds = %3
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.55.97, i64 0, i64 0), i32 5) #11
  %10 = tail call i8* @quotearg_style(i32 4, i8* nonnull %2) #11
  %11 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %9, i8* %10) #11
  br label %12

; <label>:12:                                     ; preds = %3, %8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %13, i64 0, i32 5
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %13, i64 0, i32 6
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ult i8* %15, %17
  br i1 %18, label %21, label %19

; <label>:19:                                     ; preds = %12
  %20 = tail call i32 @__overflow(%struct._IO_FILE* %13, i32 10) #11
  br label %23

; <label>:21:                                     ; preds = %12
  %22 = getelementptr inbounds i8, i8* %15, i64 1
  store i8* %22, i8** %14, align 8
  store i8 10, i8* %15, align 1
  br label %23

; <label>:23:                                     ; preds = %19, %21
  ret void
}

; Function Attrs: nounwind
declare i32 @rmdir(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @mkdir(i8* nocapture readonly, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @chmod(i8* nocapture readonly, i32) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32 @getpagesize() local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @create_hole(i32, i8*, i1 zeroext, i64) unnamed_addr #6 {
  %5 = tail call i64 @lseek(i32 %0, i64 %3, i32 1) #11
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %12

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #1
  %9 = load i32, i32* %8, align 4
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i64 0, i64 0), i32 5) #11
  %11 = tail call i8* @quotearg_style(i32 4, i8* %1) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %9, i8* %10, i8* %11) #11
  br label %23

; <label>:12:                                     ; preds = %4
  br i1 %2, label %13, label %23

; <label>:13:                                     ; preds = %12
  %14 = sub nsw i64 %5, %3
  %15 = tail call i32 @fallocate(i32 %0, i32 3, i64 %14, i64 %3) #11
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %13
  %18 = tail call i32* @__errno_location() #1
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %20 [
    i32 95, label %23
    i32 38, label %23
  ]

; <label>:20:                                     ; preds = %17
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i64 0, i64 0), i32 5) #11
  %22 = tail call i8* @quotearg_style(i32 4, i8* %1) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %19, i8* %21, i8* %22) #11
  br label %23

; <label>:23:                                     ; preds = %17, %17, %13, %12, %20, %7
  %24 = phi i1 [ false, %7 ], [ false, %20 ], [ true, %12 ], [ true, %13 ], [ true, %17 ], [ true, %17 ]
  ret i1 %24
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @sparse_copy(i32, i32, i8*, i64, i64, i1 zeroext, i8*, i8*, i64, i64* nocapture, i8* nocapture) unnamed_addr #6 {
  store i8 0, i8* %10, align 1
  store i64 0, i64* %9, align 8
  %12 = icmp ne i64 %4, 0
  %13 = select i1 %12, i64 %4, i64 %3
  br label %14

; <label>:14:                                     ; preds = %118, %11
  %15 = phi i64 [ %111, %118 ], [ 0, %11 ]
  %16 = phi i8 [ %74, %118 ], [ 0, %11 ]
  %17 = phi i64 [ %35, %118 ], [ %8, %11 ]
  %18 = icmp eq i64 %17, 0
  %19 = icmp ult i64 %17, %3
  %20 = select i1 %19, i64 %17, i64 %3
  br label %21

; <label>:21:                                     ; preds = %14, %25
  br i1 %18, label %119, label %22

; <label>:22:                                     ; preds = %21
  %23 = tail call i64 @read(i32 %0, i8* %2, i64 %20) #11
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %32

; <label>:25:                                     ; preds = %22
  %26 = tail call i32* @__errno_location() #1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %21, label %29

; <label>:29:                                     ; preds = %25
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.69, i64 0, i64 0), i32 5) #11
  %31 = tail call i8* @quotearg_style(i32 4, i8* %6) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %27, i8* %30, i8* %31) #11
  br label %128

; <label>:32:                                     ; preds = %22
  %33 = icmp eq i64 %23, 0
  br i1 %33, label %120, label %34

; <label>:34:                                     ; preds = %32
  %35 = sub i64 %17, %23
  %36 = load i64, i64* %9, align 8
  %37 = add nsw i64 %36, %23
  store i64 %37, i64* %9, align 8
  %38 = and i8 %16, 1
  br label %39

; <label>:39:                                     ; preds = %34, %110
  %40 = phi i8 [ %38, %34 ], [ %75, %110 ]
  %41 = phi i8 [ %16, %34 ], [ %74, %110 ]
  %42 = phi i8* [ %2, %34 ], [ %114, %110 ]
  %43 = phi i8* [ %2, %34 ], [ %116, %110 ]
  %44 = phi i64 [ %13, %34 ], [ %113, %110 ]
  %45 = phi i64 [ %23, %34 ], [ %115, %110 ]
  %46 = phi i64 [ %15, %34 ], [ %111, %110 ]
  %47 = icmp eq i8 %40, 0
  %48 = icmp ult i64 %44, %45
  %49 = select i1 %48, i64 %44, i64 %45
  %50 = icmp ne i64 %49, 0
  %51 = and i1 %12, %50
  br i1 %51, label %52, label %73

; <label>:52:                                     ; preds = %39
  br label %53

; <label>:53:                                     ; preds = %52, %62
  %54 = phi i64 [ %60, %62 ], [ %49, %52 ]
  %55 = phi i8* [ %59, %62 ], [ %43, %52 ]
  %56 = load i8, i8* %55, align 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %68

; <label>:58:                                     ; preds = %53
  %59 = getelementptr inbounds i8, i8* %55, i64 1
  %60 = add i64 %54, -1
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %68, label %62

; <label>:62:                                     ; preds = %58
  %63 = and i64 %60, 15
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %53

; <label>:65:                                     ; preds = %62
  %66 = tail call i32 @memcmp(i8* %43, i8* %59, i64 %60) #14
  %67 = icmp eq i32 %66, 0
  br label %70

; <label>:68:                                     ; preds = %58, %53
  %69 = phi i1 [ false, %53 ], [ true, %58 ]
  br label %70

; <label>:70:                                     ; preds = %68, %65
  %71 = phi i1 [ %67, %65 ], [ %69, %68 ]
  %72 = zext i1 %71 to i8
  br label %73

; <label>:73:                                     ; preds = %70, %39
  %74 = phi i8 [ %72, %70 ], [ %41, %39 ]
  %75 = and i8 %74, 1
  %76 = icmp ne i8 %75, %40
  %77 = icmp ne i64 %46, 0
  %78 = and i1 %77, %76
  %79 = icmp ule i64 %45, %44
  %80 = icmp eq i8 %75, 0
  %81 = and i1 %79, %80
  %82 = xor i1 %50, true
  %83 = or i1 %81, %82
  %84 = or i1 %78, %83
  br i1 %84, label %85, label %102

; <label>:85:                                     ; preds = %73
  %86 = select i1 %78, i64 0, i64 %49
  %87 = add i64 %86, %46
  br i1 %47, label %88, label %96

; <label>:88:                                     ; preds = %85
  %89 = tail call i64 @full_write(i32 %1, i8* %42, i64 %87) #11
  %90 = icmp eq i64 %89, %87
  br i1 %90, label %98, label %91

; <label>:91:                                     ; preds = %88
  %92 = tail call i32* @__errno_location() #1
  %93 = load i32, i32* %92, align 4
  %94 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i64 0, i64 0), i32 5) #11
  %95 = tail call i8* @quotearg_style(i32 4, i8* %7) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %93, i8* %94, i8* %95) #11
  br label %128

; <label>:96:                                     ; preds = %85
  %97 = tail call fastcc zeroext i1 @create_hole(i32 %1, i8* %7, i1 zeroext %5, i64 %87)
  br i1 %97, label %98, label %127

; <label>:98:                                     ; preds = %88, %96
  br i1 %83, label %99, label %110

; <label>:99:                                     ; preds = %98
  %100 = select i1 %50, i64 %45, i64 0
  %101 = select i1 %78, i64 %49, i64 0
  br label %110

; <label>:102:                                    ; preds = %73
  %103 = sub i64 9223372036854775807, %49
  %104 = icmp ugt i64 %46, %103
  br i1 %104, label %107, label %105

; <label>:105:                                    ; preds = %102
  %106 = add i64 %49, %46
  br label %110

; <label>:107:                                    ; preds = %102
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.71, i64 0, i64 0), i32 5) #11
  %109 = tail call i8* @quotearg_style(i32 4, i8* %6) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %108, i8* %109) #11
  br label %128

; <label>:110:                                    ; preds = %105, %98, %99
  %111 = phi i64 [ %49, %98 ], [ %106, %105 ], [ %101, %99 ]
  %112 = phi i64 [ %45, %98 ], [ %45, %105 ], [ %100, %99 ]
  %113 = phi i64 [ %49, %98 ], [ %49, %105 ], [ %86, %99 ]
  %114 = phi i8* [ %43, %98 ], [ %42, %105 ], [ %43, %99 ]
  %115 = sub i64 %112, %113
  %116 = getelementptr inbounds i8, i8* %43, i64 %113
  %117 = icmp eq i64 %115, 0
  br i1 %117, label %118, label %39

; <label>:118:                                    ; preds = %110
  store i8 %75, i8* %10, align 1
  br label %14

; <label>:119:                                    ; preds = %21
  br label %121

; <label>:120:                                    ; preds = %32
  br label %121

; <label>:121:                                    ; preds = %120, %119
  %122 = and i8 %16, 1
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %126, label %124

; <label>:124:                                    ; preds = %121
  %125 = tail call fastcc zeroext i1 @create_hole(i32 %1, i8* %7, i1 zeroext %5, i64 %15)
  br i1 %125, label %126, label %128

; <label>:126:                                    ; preds = %121, %124
  br label %128

; <label>:127:                                    ; preds = %96
  br label %128

; <label>:128:                                    ; preds = %127, %107, %91, %29, %124, %126
  %129 = phi i1 [ true, %126 ], [ false, %124 ], [ false, %29 ], [ false, %91 ], [ false, %107 ], [ false, %127 ]
  ret i1 %129
}

; Function Attrs: nounwind
declare i32 @ftruncate(i32, i64) local_unnamed_addr #2

declare i32 @fallocate(i32, i32, i64, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @set_owner(%struct.cp_options* nocapture readonly, i8*, i32, %struct.stat* nocapture readonly, i1 zeroext, %struct.stat* nocapture readonly) unnamed_addr #6 {
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 5
  %10 = load i32, i32* %9, align 8
  br i1 %4, label %51, label %11

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %0, i64 0, i32 15
  %13 = load i8, i8* %12, align 2
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %23

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %0, i64 0, i32 9
  %17 = load i8, i8* %16, align 8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %23

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %0, i64 0, i32 28
  %21 = load i8, i8* %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %51, label %25

; <label>:23:                                     ; preds = %11, %15
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 3
  br label %27

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %0, i64 0, i32 4
  br label %27

; <label>:27:                                     ; preds = %25, %23
  %28 = phi i32* [ %26, %25 ], [ %24, %23 ]
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %28, align 8
  %32 = and i32 %30, 448
  %33 = and i32 %32, %31
  %34 = tail call i32 @qset_acl(i8* %1, i32 %2, i32 %33) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %51, label %36

; <label>:36:                                     ; preds = %27
  %37 = tail call i32* @__errno_location() #1
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %43 [
    i32 1, label %39
    i32 22, label %39
  ]

; <label>:39:                                     ; preds = %36, %36
  %40 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %0, i64 0, i32 12
  %41 = load i8, i8* %40, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %46, label %43

; <label>:43:                                     ; preds = %36, %39
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i64 0, i64 0), i32 5) #11
  %45 = tail call i8* @quotearg_style(i32 4, i8* %1) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %38, i8* %44, i8* %45) #11
  br label %46

; <label>:46:                                     ; preds = %39, %43
  %47 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %0, i64 0, i32 21
  %48 = load i8, i8* %47, align 4
  %49 = zext i8 %48 to i32
  %50 = sub nsw i32 0, %49
  br label %83

; <label>:51:                                     ; preds = %27, %19, %6
  %52 = icmp eq i32 %2, -1
  br i1 %52, label %61, label %53

; <label>:53:                                     ; preds = %51
  %54 = tail call i32 @fchown(i32 %2, i32 %8, i32 %10) #11
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %83, label %56

; <label>:56:                                     ; preds = %53
  %57 = tail call i32* @__errno_location() #1
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %69 [
    i32 1, label %59
    i32 22, label %59
  ]

; <label>:59:                                     ; preds = %56, %56
  %60 = tail call i32 @fchown(i32 %2, i32 -1, i32 %10) #11
  store i32 %58, i32* %57, align 4
  br label %69

; <label>:61:                                     ; preds = %51
  %62 = tail call i32 @lchown(i8* %1, i32 %8, i32 %10) #11
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %83, label %64

; <label>:64:                                     ; preds = %61
  %65 = tail call i32* @__errno_location() #1
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %69 [
    i32 1, label %67
    i32 22, label %67
  ]

; <label>:67:                                     ; preds = %64, %64
  %68 = tail call i32 @lchown(i8* %1, i32 -1, i32 %10) #11
  store i32 %66, i32* %65, align 4
  br label %69

; <label>:69:                                     ; preds = %64, %56, %67, %59
  %70 = phi i32* [ %65, %64 ], [ %57, %56 ], [ %65, %67 ], [ %57, %59 ]
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %76 [
    i32 1, label %72
    i32 22, label %72
  ]

; <label>:72:                                     ; preds = %69, %69
  %73 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %0, i64 0, i32 11
  %74 = load i8, i8* %73, align 2
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %82, label %76

; <label>:76:                                     ; preds = %69, %72
  %77 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.43.93, i64 0, i64 0), i32 5) #11
  %78 = tail call i8* @quotearg_style(i32 4, i8* %1) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %71, i8* %77, i8* %78) #11
  %79 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %0, i64 0, i32 21
  %80 = load i8, i8* %79, align 4
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %76, %72
  br label %83

; <label>:83:                                     ; preds = %46, %76, %61, %53, %82
  %84 = phi i32 [ 0, %82 ], [ %50, %46 ], [ 1, %53 ], [ 1, %61 ], [ -1, %76 ]
  ret i32 %84
}

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fchmod(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @check_selinux_attr(i8*, %struct.error_context*) #6 {
  %3 = tail call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i64 0, i64 0), i64 16) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @attr_copy_check_permissions(i8* %0, %struct.error_context* %1) #11
  %7 = icmp ne i32 %6, 0
  br label %8

; <label>:8:                                      ; preds = %2, %5
  %9 = phi i1 [ false, %2 ], [ %7, %5 ]
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @copy_attr_allerror(%struct.error_context* nocapture readnone, i8*, ...) #6 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = tail call i32* @__errno_location() #1
  %5 = load i32, i32* %4, align 4
  %6 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #11
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %6)
  call void @verror(i32 0, i32 %5, i8* %1, %struct.__va_list_tag* nonnull %7) #11
  call void @llvm.va_end(i8* nonnull %6)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @copy_attr_error(%struct.error_context* nocapture readnone, i8*, ...) #6 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = tail call i32* @__errno_location() #1
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %6 [
    i32 95, label %9
    i32 61, label %9
  ]

; <label>:6:                                      ; preds = %2
  %7 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %7) #11
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %7)
  call void @verror(i32 0, i32 %5, i8* %1, %struct.__va_list_tag* nonnull %8) #11
  call void @llvm.va_end(i8* nonnull %7)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %7) #11
  br label %9

; <label>:9:                                      ; preds = %2, %2, %6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i8* @copy_attr_quote(%struct.error_context* nocapture readnone, i8*) #6 {
  %3 = tail call i8* @quotearg_style(i32 4, i8* %1) #11
  ret i8* %3
}

; Function Attrs: nounwind readnone sspstrong uwtable
define internal void @copy_attr_free(%struct.error_context* nocapture, i8* nocapture) #10 {
  ret void
}

declare i32 @attr_copy_fd(i8*, i32, i8*, i32, i32 (i8*, %struct.error_context*)*, %struct.error_context*) local_unnamed_addr #3

declare i32 @attr_copy_file(i8*, i8*, i32 (i8*, %struct.error_context*)*, %struct.error_context*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @umask(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @mkfifo(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @lchown(i8* nocapture readonly, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

declare i32 @attr_copy_check_permissions(i8*, %struct.error_context*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fchown(i32, i32, i32) local_unnamed_addr #2

declare i64 @read(i32, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define void @cp_options_default(%struct.cp_options* nocapture) local_unnamed_addr #6 {
  %2 = bitcast %struct.cp_options* %0 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 72, i32 8, i1 false)
  %3 = tail call i32 @geteuid() #11
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %0, i64 0, i32 12
  %6 = zext i1 %4 to i8
  store i8 %6, i8* %5, align 1
  %7 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %0, i64 0, i32 11
  store i8 %6, i8* %7, align 2
  ret void
}

; Function Attrs: nounwind readonly sspstrong uwtable
define zeroext i1 @chown_failure_ok(%struct.cp_options* nocapture readonly) local_unnamed_addr #12 {
  %2 = tail call i32* @__errno_location() #1
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %8 [
    i32 1, label %4
    i32 22, label %4
  ]

; <label>:4:                                      ; preds = %1, %1
  %5 = getelementptr inbounds %struct.cp_options, %struct.cp_options* %0, i64 0, i32 11
  %6 = load i8, i8* %5, align 2
  %7 = icmp eq i8 %6, 0
  br label %8

; <label>:8:                                      ; preds = %1, %4
  %9 = phi i1 [ %7, %4 ], [ false, %1 ]
  ret i1 %9
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @cached_umask() local_unnamed_addr #6 {
  %1 = load i32, i32* @cached_umask.mask, align 4
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %7

; <label>:3:                                      ; preds = %0
  %4 = tail call i32 @umask(i32 0) #11
  store i32 %4, i32* @cached_umask.mask, align 4
  %5 = tail call i32 @umask(i32 %4) #11
  %6 = load i32, i32* @cached_umask.mask, align 4
  br label %7

; <label>:7:                                      ; preds = %3, %0
  %8 = phi i32 [ %6, %3 ], [ %1, %0 ]
  ret i32 %8
}

; Function Attrs: nounwind sspstrong uwtable
define void @forget_created(i64, i64) local_unnamed_addr #6 {
  %3 = alloca %struct.Src_to_dest, align 8
  %4 = bitcast %struct.Src_to_dest* %3 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #11
  %5 = getelementptr inbounds %struct.Src_to_dest, %struct.Src_to_dest* %3, i64 0, i32 0
  store i64 %0, i64* %5, align 8
  %6 = getelementptr inbounds %struct.Src_to_dest, %struct.Src_to_dest* %3, i64 0, i32 1
  store i64 %1, i64* %6, align 8
  %7 = getelementptr inbounds %struct.Src_to_dest, %struct.Src_to_dest* %3, i64 0, i32 2
  store i8* null, i8** %7, align 8
  %8 = load %struct.hash_table*, %struct.hash_table** @src_to_dest, align 8
  %9 = call i8* @hash_delete(%struct.hash_table* %8, i8* nonnull %4) #11
  %10 = icmp eq i8* %9, null
  br i1 %10, label %15, label %11

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds i8, i8* %9, i64 16
  %13 = bitcast i8* %12 to i8**
  %14 = load i8*, i8** %13, align 8
  call void @free(i8* %14) #11
  call void @free(i8* nonnull %9) #11
  br label %15

; <label>:15:                                     ; preds = %2, %11
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @src_to_dest_lookup(i64, i64) local_unnamed_addr #6 {
  %3 = alloca %struct.Src_to_dest, align 8
  %4 = bitcast %struct.Src_to_dest* %3 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #11
  %5 = getelementptr inbounds %struct.Src_to_dest, %struct.Src_to_dest* %3, i64 0, i32 0
  store i64 %0, i64* %5, align 8
  %6 = getelementptr inbounds %struct.Src_to_dest, %struct.Src_to_dest* %3, i64 0, i32 1
  store i64 %1, i64* %6, align 8
  %7 = load %struct.hash_table*, %struct.hash_table** @src_to_dest, align 8
  %8 = call i8* @hash_lookup(%struct.hash_table* %7, i8* nonnull %4) #11
  %9 = icmp eq i8* %8, null
  br i1 %9, label %14, label %10

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds i8, i8* %8, i64 16
  %12 = bitcast i8* %11 to i8**
  %13 = load i8*, i8** %12, align 8
  br label %14

; <label>:14:                                     ; preds = %2, %10
  %15 = phi i8* [ %13, %10 ], [ null, %2 ]
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #11
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @remember_copied(i8*, i64, i64) local_unnamed_addr #6 {
  %4 = tail call noalias i8* @xmalloc(i64 24) #11
  %5 = tail call noalias i8* @xstrdup(i8* %0) #11
  %6 = getelementptr inbounds i8, i8* %4, i64 16
  %7 = bitcast i8* %6 to i8**
  store i8* %5, i8** %7, align 8
  %8 = bitcast i8* %4 to i64*
  store i64 %1, i64* %8, align 8
  %9 = getelementptr inbounds i8, i8* %4, i64 8
  %10 = bitcast i8* %9 to i64*
  store i64 %2, i64* %10, align 8
  %11 = load %struct.hash_table*, %struct.hash_table** @src_to_dest, align 8
  %12 = tail call i8* @hash_insert(%struct.hash_table* %11, i8* %4) #11
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %3
  tail call void @xalloc_die() #15
  unreachable

; <label>:15:                                     ; preds = %3
  %16 = icmp eq i8* %12, %4
  br i1 %16, label %22, label %17

; <label>:17:                                     ; preds = %15
  %18 = load i8*, i8** %7, align 8
  tail call void @free(i8* %18) #11
  tail call void @free(i8* %4) #11
  %19 = getelementptr inbounds i8, i8* %12, i64 16
  %20 = bitcast i8* %19 to i8**
  %21 = load i8*, i8** %20, align 8
  br label %22

; <label>:22:                                     ; preds = %15, %17
  %23 = phi i8* [ %21, %17 ], [ null, %15 ]
  ret i8* %23
}

; Function Attrs: nounwind sspstrong uwtable
define void @hash_init() local_unnamed_addr #6 {
  %1 = tail call %struct.hash_table* @hash_initialize(i64 103, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @src_to_dest_hash, i1 (i8*, i8*)* nonnull @src_to_dest_compare, void (i8*)* nonnull @src_to_dest_free) #11
  store %struct.hash_table* %1, %struct.hash_table** @src_to_dest, align 8
  %2 = icmp eq %struct.hash_table* %1, null
  br i1 %2, label %3, label %4

; <label>:3:                                      ; preds = %0
  tail call void @xalloc_die() #15
  unreachable

; <label>:4:                                      ; preds = %0
  ret void
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i64 @src_to_dest_hash(i8* nocapture readonly, i64) #12 {
  %3 = bitcast i8* %0 to i64*
  %4 = load i64, i64* %3, align 8
  %5 = urem i64 %4, %1
  ret i64 %5
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal zeroext i1 @src_to_dest_compare(i8* nocapture readonly, i8* nocapture readonly) #12 {
  %3 = bitcast i8* %0 to i64*
  %4 = load i64, i64* %3, align 8
  %5 = bitcast i8* %1 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %8, label %16

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds i8, i8* %0, i64 8
  %10 = bitcast i8* %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 8
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br label %16

; <label>:16:                                     ; preds = %8, %2
  %17 = phi i1 [ false, %2 ], [ %15, %8 ]
  ret i1 %17
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @src_to_dest_free(i8* nocapture) #6 {
  %2 = getelementptr inbounds i8, i8* %0, i64 16
  %3 = bitcast i8* %2 to i8**
  %4 = load i8*, i8** %3, align 8
  tail call void @free(i8* %4) #11
  tail call void @free(i8* %0) #11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @forget_all() local_unnamed_addr #6 {
  %1 = load %struct.hash_table*, %struct.hash_table** @src_to_dest, align 8
  tail call void @hash_free(%struct.hash_table* %1) #11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @extent_scan_init(i32, %struct.extent_scan* nocapture) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.extent_scan, %struct.extent_scan* %1, i64 0, i32 0
  store i32 %0, i32* %3, align 8
  %4 = getelementptr inbounds %struct.extent_scan, %struct.extent_scan* %1, i64 0, i32 3
  store i64 0, i64* %4, align 8
  %5 = getelementptr inbounds %struct.extent_scan, %struct.extent_scan* %1, i64 0, i32 6
  store %struct.extent_info* null, %struct.extent_info** %5, align 8
  %6 = getelementptr inbounds %struct.extent_scan, %struct.extent_scan* %1, i64 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = getelementptr inbounds %struct.extent_scan, %struct.extent_scan* %1, i64 0, i32 4
  store i8 0, i8* %7, align 8
  %8 = getelementptr inbounds %struct.extent_scan, %struct.extent_scan* %1, i64 0, i32 5
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.extent_scan, %struct.extent_scan* %1, i64 0, i32 2
  store i32 1, i32* %9, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @extent_scan_read(%struct.extent_scan* nocapture) local_unnamed_addr #6 {
  %2 = alloca %union.anon.16, align 8
  %3 = getelementptr inbounds %struct.extent_scan, %struct.extent_scan* %0, i64 0, i32 6
  %4 = load %struct.extent_info*, %struct.extent_info** %3, align 8
  %5 = bitcast %union.anon.16* %2 to i8*
  %6 = getelementptr inbounds %union.anon.16, %union.anon.16* %2, i64 0, i32 0
  %7 = getelementptr inbounds %struct.extent_scan, %struct.extent_scan* %0, i64 0, i32 1
  %8 = getelementptr inbounds %union.anon.16, %union.anon.16* %2, i64 0, i32 0, i32 0
  %9 = getelementptr inbounds %struct.extent_scan, %struct.extent_scan* %0, i64 0, i32 2
  %10 = getelementptr inbounds %union.anon.16, %union.anon.16* %2, i64 0, i32 0, i32 2
  %11 = getelementptr inbounds %union.anon.16, %union.anon.16* %2, i64 0, i32 0, i32 4
  %12 = getelementptr inbounds %union.anon.16, %union.anon.16* %2, i64 0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.extent_scan, %struct.extent_scan* %0, i64 0, i32 0
  %14 = getelementptr inbounds %union.anon.16, %union.anon.16* %2, i64 0, i32 0, i32 3
  %15 = getelementptr inbounds %struct.extent_scan, %struct.extent_scan* %0, i64 0, i32 3
  %16 = bitcast %struct.extent_info** %3 to i8**
  %17 = getelementptr inbounds %struct.extent_scan, %struct.extent_scan* %0, i64 0, i32 5
  %18 = load i64, i64* %7, align 8
  br label %19

; <label>:19:                                     ; preds = %158, %1
  %20 = phi i64 [ %18, %1 ], [ %165, %158 ]
  %21 = phi %struct.extent_info* [ %4, %1 ], [ %160, %158 ]
  %22 = phi i32 [ 0, %1 ], [ %159, %158 ]
  call void @llvm.lifetime.start(i64 4096, i8* nonnull %5) #11
  call void @llvm.memset.p0i8.i64(i8* nonnull %5, i8 0, i64 4096, i32 8, i1 false)
  store i64 %20, i64* %8, align 8
  %23 = load i32, i32* %9, align 8
  store i32 %23, i32* %10, align 8
  store i32 72, i32* %11, align 8
  %24 = xor i64 %20, -1
  store i64 %24, i64* %12, align 8
  %25 = load i32, i32* %13, align 8
  %26 = call i32 (i32, i64, ...) @ioctl(i32 %25, i64 3223348747, %struct.fiemap* nonnull %6) #11
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

; <label>:28:                                     ; preds = %19
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %156

; <label>:31:                                     ; preds = %28
  %32 = getelementptr inbounds %struct.extent_scan, %struct.extent_scan* %0, i64 0, i32 4
  store i8 1, i8* %32, align 8
  br label %156

; <label>:33:                                     ; preds = %19
  %34 = load i32, i32* %14, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

; <label>:36:                                     ; preds = %33
  store i8 1, i8* %17, align 1
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %37, 0
  br label %156

; <label>:39:                                     ; preds = %33
  %40 = load i64, i64* %15, align 8
  %41 = zext i32 %34 to i64
  %42 = xor i64 %41, -1
  %43 = icmp ugt i64 %40, %42
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %39
  call void @__assert_fail(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.116, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1.117, i64 0, i64 0), i32 126, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.extent_scan_read, i64 0, i64 0)) #15
  unreachable

; <label>:45:                                     ; preds = %39
  %46 = add i64 %40, %41
  store i64 %46, i64* %15, align 8
  %47 = load %struct.extent_info*, %struct.extent_info** %3, align 8
  %48 = icmp ugt i64 %46, 384307168202282325
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %45
  call void @xalloc_die() #15
  unreachable

; <label>:50:                                     ; preds = %45
  %51 = bitcast %struct.extent_info* %47 to i8*
  %52 = ptrtoint %struct.extent_info* %21 to i64
  %53 = ptrtoint %struct.extent_info* %47 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 24
  %56 = mul i64 %46, 24
  %57 = call i8* @xrealloc(i8* %51, i64 %56) #11
  %58 = bitcast i8* %57 to %struct.extent_info*
  store i8* %57, i8** %16, align 8
  %59 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %58, i64 %55
  %60 = load i32, i32* %14, align 4
  %61 = icmp eq i32 %60, 0
  %62 = bitcast i8* %57 to %struct.extent_info*
  br i1 %61, label %130, label %63

; <label>:63:                                     ; preds = %50
  br label %64

; <label>:64:                                     ; preds = %63, %123
  %65 = phi i32 [ %127, %123 ], [ 0, %63 ]
  %66 = phi i32 [ %125, %123 ], [ %22, %63 ]
  %67 = phi %struct.extent_info* [ %124, %123 ], [ %59, %63 ]
  %68 = zext i32 %65 to i64
  %69 = getelementptr inbounds %union.anon.16, %union.anon.16* %2, i64 0, i32 0, i32 6, i64 %68, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %union.anon.16, %union.anon.16* %2, i64 0, i32 0, i32 6, i64 %68, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = sub i64 9223372036854775807, %72
  %74 = icmp ugt i64 %70, %73
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %64
  call void @__assert_fail(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2.118, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1.117, i64 0, i64 0), i32 141, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.extent_scan_read, i64 0, i64 0)) #15
  unreachable

; <label>:76:                                     ; preds = %64
  %77 = icmp eq i32 %66, 0
  br i1 %77, label %94, label %78

; <label>:78:                                     ; preds = %76
  %79 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %67, i64 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %union.anon.16, %union.anon.16* %2, i64 0, i32 0, i32 6, i64 %68, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, -2
  %84 = icmp eq i32 %80, %83
  %85 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %67, i64 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %67, i64 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, %86
  %90 = icmp eq i64 %89, %70
  %91 = and i1 %84, %90
  br i1 %91, label %92, label %100

; <label>:92:                                     ; preds = %78
  %93 = add i64 %88, %72
  store i64 %93, i64* %87, align 8
  store i32 %82, i32* %79, align 8
  br label %123

; <label>:94:                                     ; preds = %76
  %95 = load i64, i64* %7, align 8
  %96 = icmp ugt i64 %95, %70
  br i1 %96, label %103, label %97

; <label>:97:                                     ; preds = %94
  %98 = getelementptr inbounds %union.anon.16, %union.anon.16* %2, i64 0, i32 0, i32 6, i64 %68, i32 4
  %99 = load i32, i32* %98, align 8
  br label %115

; <label>:100:                                    ; preds = %78
  %101 = add nsw i64 %88, %86
  %102 = icmp ugt i64 %101, %70
  br i1 %102, label %103, label %115

; <label>:103:                                    ; preds = %100, %94
  %104 = phi i64 [ %95, %94 ], [ %101, %100 ]
  %105 = sub i64 %104, %70
  %106 = icmp ugt i64 %72, %105
  br i1 %106, label %107, label %112

; <label>:107:                                    ; preds = %103
  %108 = load i64, i64* %7, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %156

; <label>:110:                                    ; preds = %107
  %111 = getelementptr inbounds %struct.extent_scan, %struct.extent_scan* %0, i64 0, i32 4
  store i8 1, i8* %111, align 8
  br label %156

; <label>:112:                                    ; preds = %103
  store i64 %104, i64* %69, align 8
  %113 = sub i64 %72, %105
  store i64 %113, i64* %71, align 8
  %114 = add i32 %65, -1
  br label %123

; <label>:115:                                    ; preds = %97, %100
  %116 = phi i32 [ %99, %97 ], [ %82, %100 ]
  %117 = zext i32 %66 to i64
  %118 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %62, i64 %117
  %119 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %118, i64 0, i32 0
  store i64 %70, i64* %119, align 8
  %120 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %62, i64 %117, i32 1
  store i64 %72, i64* %120, align 8
  %121 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %62, i64 %117, i32 2
  store i32 %116, i32* %121, align 8
  %122 = add i32 %66, 1
  br label %123

; <label>:123:                                    ; preds = %112, %92, %115
  %124 = phi %struct.extent_info* [ %67, %92 ], [ %67, %112 ], [ %118, %115 ]
  %125 = phi i32 [ %66, %92 ], [ %66, %112 ], [ %122, %115 ]
  %126 = phi i32 [ %65, %92 ], [ %114, %112 ], [ %65, %115 ]
  %127 = add i32 %126, 1
  %128 = icmp ult i32 %127, %60
  br i1 %128, label %64, label %129

; <label>:129:                                    ; preds = %123
  br label %130

; <label>:130:                                    ; preds = %129, %50
  %131 = phi %struct.extent_info* [ %59, %50 ], [ %124, %129 ]
  %132 = phi i32 [ %22, %50 ], [ %125, %129 ]
  %133 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %131, i64 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, 1
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %138, label %137

; <label>:137:                                    ; preds = %130
  store i8 1, i8* %17, align 1
  br label %138

; <label>:138:                                    ; preds = %130, %137
  %139 = icmp ugt i32 %132, 72
  %140 = load i8, i8* %17, align 1
  br i1 %139, label %141, label %151

; <label>:141:                                    ; preds = %138
  %142 = icmp eq i8 %140, 0
  br i1 %142, label %145, label %143

; <label>:143:                                    ; preds = %141
  %144 = zext i32 %132 to i64
  store i64 %144, i64* %15, align 8
  br label %155

; <label>:145:                                    ; preds = %141
  %146 = add i32 %132, -1
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %62, i64 %147
  %149 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %148, i64 -1
  %150 = zext i32 %146 to i64
  store i64 %150, i64* %15, align 8
  br label %158

; <label>:151:                                    ; preds = %138
  %152 = zext i32 %132 to i64
  store i64 %152, i64* %15, align 8
  %153 = icmp eq i8 %140, 0
  br i1 %153, label %158, label %154

; <label>:154:                                    ; preds = %151
  br label %155

; <label>:155:                                    ; preds = %154, %143
  call void @llvm.lifetime.end(i64 4096, i8* nonnull %5) #11
  br label %168

; <label>:156:                                    ; preds = %36, %31, %28, %110, %107
  %157 = phi i1 [ false, %28 ], [ false, %31 ], [ %38, %36 ], [ false, %110 ], [ false, %107 ]
  call void @llvm.lifetime.end(i64 4096, i8* nonnull %5) #11
  br label %168

; <label>:158:                                    ; preds = %145, %151
  %159 = phi i32 [ %146, %145 ], [ %132, %151 ]
  %160 = phi %struct.extent_info* [ %149, %145 ], [ %131, %151 ]
  %161 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %160, i64 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %160, i64 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, %162
  store i64 %165, i64* %7, align 8
  %166 = icmp ugt i32 %159, 71
  call void @llvm.lifetime.end(i64 4096, i8* nonnull %5) #11
  br i1 %166, label %167, label %19

; <label>:167:                                    ; preds = %158
  br label %168

; <label>:168:                                    ; preds = %167, %155, %156
  %169 = phi i1 [ %157, %156 ], [ true, %155 ], [ true, %167 ]
  ret i1 %169
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @force_linkat(i32, i8*, i32, i8*, i32, i1 zeroext) local_unnamed_addr #6 {
  %7 = alloca [256 x i8], align 16
  %8 = alloca %struct.link_arg, align 8
  %9 = tail call i32 @linkat(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4) #11
  %10 = xor i1 %5, true
  %11 = icmp eq i32 %9, 0
  %12 = or i1 %11, %10
  br i1 %12, label %62, label %13

; <label>:13:                                     ; preds = %6
  %14 = tail call i32* @__errno_location() #1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 17
  br i1 %16, label %17, label %62

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* nonnull %18) #11
  %19 = tail call i8* @last_component(i8* %3) #14
  %20 = ptrtoint i8* %19 to i64
  %21 = ptrtoint i8* %3 to i64
  %22 = sub i64 %20, %21
  %23 = add i64 %22, 9
  %24 = icmp ult i64 %23, 257
  br i1 %24, label %28, label %25

; <label>:25:                                     ; preds = %17
  %26 = tail call noalias i8* @malloc(i64 %23) #11
  %27 = icmp eq i8* %26, null
  br i1 %27, label %60, label %28

; <label>:28:                                     ; preds = %17, %25
  %29 = phi i8* [ %26, %25 ], [ %18, %17 ]
  %30 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %29, i1 false) #11
  %31 = call i8* @__mempcpy_chk(i8* nonnull %29, i8* nonnull %3, i64 %22, i64 %30) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @simple_pattern, i64 0, i64 0), i64 9, i32 1, i1 false) #11
  %32 = icmp eq i8* %29, null
  br i1 %32, label %60, label %33

; <label>:33:                                     ; preds = %28
  %34 = bitcast %struct.link_arg* %8 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %34) #11
  %35 = getelementptr inbounds %struct.link_arg, %struct.link_arg* %8, i64 0, i32 0
  store i32 %0, i32* %35, align 8
  %36 = getelementptr inbounds %struct.link_arg, %struct.link_arg* %8, i64 0, i32 1
  store i8* %1, i8** %36, align 8
  %37 = getelementptr inbounds %struct.link_arg, %struct.link_arg* %8, i64 0, i32 2
  store i32 %2, i32* %37, align 8
  %38 = getelementptr inbounds %struct.link_arg, %struct.link_arg* %8, i64 0, i32 3
  store i32 %4, i32* %38, align 4
  %39 = call i32 @try_tempname_len(i8* nonnull %29, i32 0, i8* nonnull %34, i32 (i8*, i8*)* nonnull @try_link, i64 6) #11
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

; <label>:41:                                     ; preds = %33
  %42 = load i32, i32* %14, align 4
  br label %51

; <label>:43:                                     ; preds = %33
  %44 = call i32 @renameat(i32 %2, i8* nonnull %29, i32 %2, i8* %3) #11
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

; <label>:46:                                     ; preds = %43
  %47 = load i32, i32* %14, align 4
  br label %48

; <label>:48:                                     ; preds = %43, %46
  %49 = phi i32 [ %47, %46 ], [ 0, %43 ]
  %50 = call i32 @unlinkat(i32 %2, i8* nonnull %29, i32 0) #11
  br label %51

; <label>:51:                                     ; preds = %48, %41
  %52 = phi i32 [ %42, %41 ], [ %49, %48 ]
  %53 = icmp eq i8* %29, %18
  br i1 %53, label %55, label %54

; <label>:54:                                     ; preds = %51
  call void @free(i8* %29) #11
  br label %55

; <label>:55:                                     ; preds = %51, %54
  %56 = icmp eq i32 %52, 0
  br i1 %56, label %58, label %57

; <label>:57:                                     ; preds = %55
  store i32 %52, i32* %14, align 4
  br label %58

; <label>:58:                                     ; preds = %55, %57
  %59 = phi i32 [ -1, %57 ], [ 1, %55 ]
  call void @llvm.lifetime.end(i64 24, i8* nonnull %34) #11
  br label %60

; <label>:60:                                     ; preds = %25, %28, %58
  %61 = phi i32 [ %59, %58 ], [ -1, %28 ], [ -1, %25 ]
  call void @llvm.lifetime.end(i64 256, i8* nonnull %18) #11
  br label %62

; <label>:62:                                     ; preds = %6, %13, %60
  %63 = phi i32 [ %61, %60 ], [ %9, %13 ], [ %9, %6 ]
  ret i32 %63
}

; Function Attrs: nounwind
declare i32 @linkat(i32, i8*, i32, i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @try_link(i8*, i8* nocapture readonly) #6 {
  %3 = bitcast i8* %1 to i32*
  %4 = load i32, i32* %3, align 8
  %5 = getelementptr inbounds i8, i8* %1, i64 8
  %6 = bitcast i8* %5 to i8**
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds i8, i8* %1, i64 16
  %9 = bitcast i8* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds i8, i8* %1, i64 20
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = tail call i32 @linkat(i32 %4, i8* %7, i32 %10, i8* %0, i32 %13) #11
  ret i32 %14
}

; Function Attrs: nounwind
declare i32 @renameat(i32, i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @force_symlinkat(i8*, i32, i8*, i1 zeroext) local_unnamed_addr #6 {
  %5 = alloca [256 x i8], align 16
  %6 = alloca %struct.symlink_arg, align 8
  %7 = tail call i32 @symlinkat(i8* %0, i32 %1, i8* %2) #11
  %8 = xor i1 %3, true
  %9 = icmp eq i32 %7, 0
  %10 = or i1 %9, %8
  br i1 %10, label %56, label %11

; <label>:11:                                     ; preds = %4
  %12 = tail call i32* @__errno_location() #1
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 17
  br i1 %14, label %15, label %56

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* nonnull %16) #11
  %17 = tail call i8* @last_component(i8* %2) #14
  %18 = ptrtoint i8* %17 to i64
  %19 = ptrtoint i8* %2 to i64
  %20 = sub i64 %18, %19
  %21 = add i64 %20, 9
  %22 = icmp ult i64 %21, 257
  br i1 %22, label %26, label %23

; <label>:23:                                     ; preds = %15
  %24 = tail call noalias i8* @malloc(i64 %21) #11
  %25 = icmp eq i8* %24, null
  br i1 %25, label %54, label %26

; <label>:26:                                     ; preds = %15, %23
  %27 = phi i8* [ %24, %23 ], [ %16, %15 ]
  %28 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %27, i1 false) #11
  %29 = call i8* @__mempcpy_chk(i8* nonnull %27, i8* nonnull %2, i64 %20, i64 %28) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @simple_pattern, i64 0, i64 0), i64 9, i32 1, i1 false) #11
  %30 = icmp eq i8* %27, null
  br i1 %30, label %54, label %31

; <label>:31:                                     ; preds = %26
  %32 = bitcast %struct.symlink_arg* %6 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %32) #11
  %33 = getelementptr inbounds %struct.symlink_arg, %struct.symlink_arg* %6, i64 0, i32 0
  store i8* %0, i8** %33, align 8
  %34 = getelementptr inbounds %struct.symlink_arg, %struct.symlink_arg* %6, i64 0, i32 1
  store i32 %1, i32* %34, align 8
  %35 = call i32 @try_tempname_len(i8* nonnull %27, i32 0, i8* nonnull %32, i32 (i8*, i8*)* nonnull @try_symlink, i64 6) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

; <label>:37:                                     ; preds = %31
  %38 = load i32, i32* %12, align 4
  br label %45

; <label>:39:                                     ; preds = %31
  %40 = call i32 @renameat(i32 %1, i8* nonnull %27, i32 %1, i8* %2) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @unlinkat(i32 %1, i8* nonnull %27, i32 0) #11
  br label %45

; <label>:45:                                     ; preds = %39, %42, %37
  %46 = phi i32 [ %38, %37 ], [ %43, %42 ], [ 0, %39 ]
  %47 = icmp eq i8* %27, %16
  br i1 %47, label %49, label %48

; <label>:48:                                     ; preds = %45
  call void @free(i8* %27) #11
  br label %49

; <label>:49:                                     ; preds = %45, %48
  %50 = icmp eq i32 %46, 0
  br i1 %50, label %52, label %51

; <label>:51:                                     ; preds = %49
  store i32 %46, i32* %12, align 4
  br label %52

; <label>:52:                                     ; preds = %49, %51
  %53 = phi i32 [ -1, %51 ], [ 1, %49 ]
  call void @llvm.lifetime.end(i64 16, i8* nonnull %32) #11
  br label %54

; <label>:54:                                     ; preds = %23, %26, %52
  %55 = phi i32 [ %53, %52 ], [ -1, %26 ], [ -1, %23 ]
  call void @llvm.lifetime.end(i64 256, i8* nonnull %16) #11
  br label %56

; <label>:56:                                     ; preds = %4, %11, %54
  %57 = phi i32 [ %55, %54 ], [ %7, %11 ], [ %7, %4 ]
  ret i32 %57
}

; Function Attrs: nounwind
declare i32 @symlinkat(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @try_symlink(i8*, i8* nocapture readonly) #6 {
  %3 = bitcast i8* %1 to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds i8, i8* %1, i64 8
  %6 = bitcast i8* %5 to i32*
  %7 = load i32, i32* %6, align 8
  %8 = tail call i32 @symlinkat(i8* %4, i32 %7, i8* %0) #11
  ret i32 %8
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @copy_acl(i8*, i32, i8*, i32, i32) local_unnamed_addr #6 {
  %6 = tail call i32 @qcopy_acl(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4) #11
  switch i32 %6, label %16 [
    i32 -2, label %7
    i32 -1, label %11
  ]

; <label>:7:                                      ; preds = %5
  %8 = tail call i32* @__errno_location() #1
  %9 = load i32, i32* %8, align 4
  %10 = tail call i8* @quote(i8* %0) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.128, i64 0, i64 0), i8* %10) #11
  br label %16

; <label>:11:                                     ; preds = %5
  %12 = tail call i32* @__errno_location() #1
  %13 = load i32, i32* %12, align 4
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1.129, i64 0, i64 0), i32 5) #11
  %15 = tail call i8* @quote(i8* %2) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %13, i8* %14, i8* %15) #11
  br label %16

; <label>:16:                                     ; preds = %5, %11, %7
  ret i32 %6
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_acl(i8*, i32, i32) local_unnamed_addr #6 {
  %4 = tail call i32 @qset_acl(i8* %0, i32 %1, i32 %2) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno_location() #1
  %8 = load i32, i32* %7, align 4
  %9 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.132, i64 0, i64 0), i32 5) #11
  %10 = tail call i8* @quote(i8* %0) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %8, i8* %9, i8* %10) #11
  br label %11

; <label>:11:                                     ; preds = %3, %6
  ret i32 %4
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @areadlink_with_size(i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %3 = icmp ult i64 %1, 1025
  %4 = add i64 %1, 1
  %5 = select i1 %3, i64 %4, i64 1025
  %6 = tail call noalias i8* @malloc(i64 %5) #11
  %7 = icmp eq i8* %6, null
  br i1 %7, label %36, label %8

; <label>:8:                                      ; preds = %2
  br label %9

; <label>:9:                                      ; preds = %8, %27
  %10 = phi i8* [ %29, %27 ], [ %6, %8 ]
  %11 = phi i64 [ %28, %27 ], [ %5, %8 ]
  %12 = tail call i64 @readlink(i8* %0, i8* nonnull %10, i64 %11) #11
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %19

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 34
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* nonnull %10) #11
  store i32 %16, i32* %15, align 4
  br label %36

; <label>:19:                                     ; preds = %14, %9
  %20 = icmp ult i64 %12, %11
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %19
  %22 = getelementptr inbounds i8, i8* %10, i64 %12
  store i8 0, i8* %22, align 1
  br label %36

; <label>:23:                                     ; preds = %19
  tail call void @free(i8* nonnull %10) #11
  %24 = icmp ult i64 %11, 4611686018427387904
  br i1 %24, label %25, label %31

; <label>:25:                                     ; preds = %23
  %26 = shl i64 %11, 1
  br label %27

; <label>:27:                                     ; preds = %25, %31
  %28 = phi i64 [ %26, %25 ], [ 9223372036854775807, %31 ]
  %29 = tail call noalias i8* @malloc(i64 %28) #11
  %30 = icmp eq i8* %29, null
  br i1 %30, label %35, label %9

; <label>:31:                                     ; preds = %23
  %32 = icmp ult i64 %11, 9223372036854775807
  br i1 %32, label %27, label %33

; <label>:33:                                     ; preds = %31
  %34 = tail call i32* @__errno_location() #1
  store i32 12, i32* %34, align 4
  br label %36

; <label>:35:                                     ; preds = %27
  br label %36

; <label>:36:                                     ; preds = %35, %2, %18, %21, %33
  %37 = phi i8* [ null, %33 ], [ %10, %21 ], [ null, %18 ], [ null, %2 ], [ null, %35 ]
  ret i8* %37
}

; Function Attrs: nounwind
declare i64 @readlink(i8* nocapture readonly, i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @find_backup_file_name(i8* nocapture readonly, i32) local_unnamed_addr #6 {
  %3 = tail call i64 @strlen(i8* %0) #14
  %4 = load i8*, i8** @simple_backup_suffix, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %15

; <label>:6:                                      ; preds = %2
  %7 = tail call i8* @getenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.139, i64 0, i64 0)) #11
  %8 = icmp eq i8* %7, null
  br i1 %8, label %13, label %9

; <label>:9:                                      ; preds = %6
  %10 = load i8, i8* %7, align 1
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.140, i64 0, i64 0), i8* %7
  br label %13

; <label>:13:                                     ; preds = %9, %6
  %14 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.140, i64 0, i64 0), %6 ], [ %12, %9 ]
  store i8* %14, i8** @simple_backup_suffix, align 8
  br label %15

; <label>:15:                                     ; preds = %2, %13
  %16 = phi i8* [ %4, %2 ], [ %14, %13 ]
  %17 = tail call i64 @strlen(i8* %16) #14
  %18 = add i64 %17, 1
  %19 = icmp ugt i64 %18, 9
  %20 = select i1 %19, i64 %18, i64 9
  %21 = add i64 %3, 1
  %22 = add i64 %21, %20
  %23 = tail call noalias i8* @xmalloc(i64 %22) #11
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %0, i64 %21, i32 1, i1 false)
  %24 = icmp eq i32 %1, 1
  br i1 %24, label %157, label %25

; <label>:25:                                     ; preds = %15
  %26 = tail call i8* @last_component(i8* %23) #14
  %27 = ptrtoint i8* %26 to i64
  %28 = ptrtoint i8* %23 to i64
  %29 = sub i64 %27, %28
  %30 = tail call i64 @base_len(i8* %26) #14
  %31 = bitcast i8* %26 to i16*
  %32 = load i16, i16* %31, align 1
  store i16 46, i16* %31, align 1
  %33 = tail call %struct.__dirstream* @opendir_safer(i8* %23) #11
  store i16 %32, i16* %31, align 1
  %34 = getelementptr inbounds i8, i8* %26, i64 %30
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.141, i64 0, i64 0), i64 5, i32 1, i1 false) #11
  %35 = icmp eq %struct.__dirstream* %33, null
  br i1 %35, label %154, label %36

; <label>:36:                                     ; preds = %25
  %37 = tail call %struct.dirent* @readdir(%struct.__dirstream* nonnull %33) #11
  %38 = icmp eq %struct.dirent* %37, null
  br i1 %38, label %39, label %41

; <label>:39:                                     ; preds = %36
  %40 = tail call i32 @closedir(%struct.__dirstream* nonnull %33) #11
  br label %154

; <label>:41:                                     ; preds = %36
  %42 = add i64 %30, 4
  %43 = add i64 %30, 2
  %44 = add i64 %3, 3
  br label %45

; <label>:45:                                     ; preds = %96, %41
  %46 = phi %struct.dirent* [ %37, %41 ], [ %101, %96 ]
  %47 = phi i64 [ %22, %41 ], [ %100, %96 ]
  %48 = phi i32 [ 2, %41 ], [ %99, %96 ]
  %49 = phi i8* [ %23, %41 ], [ %98, %96 ]
  %50 = phi i64 [ 1, %41 ], [ %97, %96 ]
  %51 = getelementptr inbounds %struct.dirent, %struct.dirent* %46, i64 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %96, label %54

; <label>:54:                                     ; preds = %45
  %55 = getelementptr inbounds %struct.dirent, %struct.dirent* %46, i64 0, i32 4, i64 0
  %56 = tail call i64 @strlen(i8* %55) #14
  %57 = icmp ult i64 %56, %42
  br i1 %57, label %96, label %58

; <label>:58:                                     ; preds = %54
  %59 = getelementptr inbounds i8, i8* %49, i64 %29
  %60 = tail call i32 @memcmp(i8* %59, i8* %55, i64 %43) #14
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %96

; <label>:62:                                     ; preds = %58
  %63 = getelementptr inbounds %struct.dirent, %struct.dirent* %46, i64 0, i32 4, i64 %30
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  %65 = load i8, i8* %64, align 1
  %66 = add i8 %65, -49
  %67 = icmp ult i8 %66, 9
  br i1 %67, label %68, label %96

; <label>:68:                                     ; preds = %62
  %69 = icmp eq i8 %65, 57
  %70 = zext i1 %69 to i8
  %71 = getelementptr inbounds i8, i8* %63, i64 3
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = add nsw i32 %73, -48
  %75 = icmp ult i32 %74, 10
  br i1 %75, label %76, label %91

; <label>:76:                                     ; preds = %68
  br label %77

; <label>:77:                                     ; preds = %76, %77
  %78 = phi i8 [ %86, %77 ], [ %72, %76 ]
  %79 = phi i64 [ %84, %77 ], [ 1, %76 ]
  %80 = phi i8 [ %83, %77 ], [ %70, %76 ]
  %81 = icmp eq i8 %78, 57
  %82 = zext i1 %81 to i8
  %83 = and i8 %82, %80
  %84 = add i64 %79, 1
  %85 = getelementptr inbounds i8, i8* %64, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = add nsw i32 %87, -48
  %89 = icmp ult i32 %88, 10
  br i1 %89, label %77, label %90

; <label>:90:                                     ; preds = %77
  br label %91

; <label>:91:                                     ; preds = %90, %68
  %92 = phi i8 [ %70, %68 ], [ %83, %90 ]
  %93 = phi i64 [ 1, %68 ], [ %84, %90 ]
  %94 = phi i8 [ %72, %68 ], [ %86, %90 ]
  %95 = icmp eq i8 %94, 126
  br i1 %95, label %103, label %96

; <label>:96:                                     ; preds = %148, %112, %110, %103, %91, %62, %58, %54, %45
  %97 = phi i64 [ %119, %148 ], [ %50, %45 ], [ %50, %54 ], [ %50, %58 ], [ %50, %62 ], [ %50, %103 ], [ %50, %112 ], [ %50, %110 ], [ %50, %91 ]
  %98 = phi i8* [ %130, %148 ], [ %49, %45 ], [ %49, %54 ], [ %49, %58 ], [ %49, %62 ], [ %49, %103 ], [ %49, %112 ], [ %49, %110 ], [ %49, %91 ]
  %99 = phi i32 [ %120, %148 ], [ %48, %45 ], [ %48, %54 ], [ %48, %58 ], [ %48, %62 ], [ %48, %103 ], [ %48, %112 ], [ %48, %110 ], [ %48, %91 ]
  %100 = phi i64 [ %131, %148 ], [ %47, %45 ], [ %47, %54 ], [ %47, %58 ], [ %47, %62 ], [ %47, %103 ], [ %47, %112 ], [ %47, %110 ], [ %47, %91 ]
  %101 = tail call %struct.dirent* @readdir(%struct.__dirstream* nonnull %33) #11
  %102 = icmp eq %struct.dirent* %101, null
  br i1 %102, label %152, label %45

; <label>:103:                                    ; preds = %91
  %104 = add i64 %93, 1
  %105 = getelementptr inbounds i8, i8* %64, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %96

; <label>:108:                                    ; preds = %103
  %109 = icmp ult i64 %50, %93
  br i1 %109, label %117, label %110

; <label>:110:                                    ; preds = %108
  %111 = icmp eq i64 %50, %93
  br i1 %111, label %112, label %96

; <label>:112:                                    ; preds = %110
  %113 = getelementptr inbounds i8, i8* %49, i64 %3
  %114 = getelementptr inbounds i8, i8* %113, i64 2
  %115 = tail call i32 @memcmp(i8* %114, i8* nonnull %64, i64 %50) #14
  %116 = icmp slt i32 %115, 1
  br i1 %116, label %117, label %96

; <label>:117:                                    ; preds = %112, %108
  %118 = zext i8 %92 to i64
  %119 = add i64 %118, %93
  %120 = zext i8 %92 to i32
  %121 = add i64 %44, %119
  %122 = icmp ugt i64 %47, %121
  br i1 %122, label %129, label %123

; <label>:123:                                    ; preds = %117
  %124 = icmp ugt i64 %121, 4611686018427387903
  br i1 %124, label %125, label %126

; <label>:125:                                    ; preds = %123
  tail call void @xalloc_die() #15
  unreachable

; <label>:126:                                    ; preds = %123
  %127 = shl i64 %121, 1
  %128 = tail call i8* @xrealloc(i8* %49, i64 %127) #11
  br label %129

; <label>:129:                                    ; preds = %126, %117
  %130 = phi i8* [ %128, %126 ], [ %49, %117 ]
  %131 = phi i64 [ %127, %126 ], [ %47, %117 ]
  %132 = getelementptr inbounds i8, i8* %130, i64 %3
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  store i8 46, i8* %132, align 1
  %134 = getelementptr inbounds i8, i8* %133, i64 1
  store i8 126, i8* %133, align 1
  store i8 48, i8* %134, align 1
  %135 = getelementptr inbounds i8, i8* %134, i64 %118
  %136 = add i64 %93, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %135, i8* nonnull %64, i64 %136, i32 1, i1 false) #11
  %137 = getelementptr inbounds i8, i8* %135, i64 %93
  %138 = getelementptr inbounds i8, i8* %137, i64 -1
  %139 = load i8, i8* %138, align 1
  %140 = icmp eq i8 %139, 57
  br i1 %140, label %141, label %148

; <label>:141:                                    ; preds = %129
  br label %142

; <label>:142:                                    ; preds = %141, %142
  %143 = phi i8* [ %144, %142 ], [ %138, %141 ]
  store i8 48, i8* %143, align 1
  %144 = getelementptr inbounds i8, i8* %143, i64 -1
  %145 = load i8, i8* %144, align 1
  %146 = icmp eq i8 %145, 57
  br i1 %146, label %142, label %147

; <label>:147:                                    ; preds = %142
  br label %148

; <label>:148:                                    ; preds = %147, %129
  %149 = phi i8* [ %138, %129 ], [ %144, %147 ]
  %150 = phi i8 [ %139, %129 ], [ %145, %147 ]
  %151 = add i8 %150, 1
  store i8 %151, i8* %149, align 1
  br label %96

; <label>:152:                                    ; preds = %96
  %153 = tail call i32 @closedir(%struct.__dirstream* nonnull %33) #11
  switch i32 %99, label %157 [
    i32 0, label %192
    i32 1, label %161
    i32 2, label %154
  ]

; <label>:154:                                    ; preds = %25, %39, %152
  %155 = phi i8* [ %98, %152 ], [ %23, %39 ], [ %23, %25 ]
  %156 = icmp eq i32 %1, 2
  br i1 %156, label %157, label %161

; <label>:157:                                    ; preds = %15, %152, %154
  %158 = phi i8* [ %23, %15 ], [ %98, %152 ], [ %155, %154 ]
  %159 = getelementptr inbounds i8, i8* %158, i64 %3
  %160 = load i8*, i8** @simple_backup_suffix, align 8
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %159, i8* %160, i64 %18, i32 1, i1 false)
  br label %161

; <label>:161:                                    ; preds = %152, %157, %154
  %162 = phi i8* [ %158, %157 ], [ %155, %154 ], [ %98, %152 ]
  %163 = tail call i8* @last_component(i8* %162) #14
  %164 = tail call i64 @base_len(i8* %163) #14
  %165 = icmp ugt i64 %164, 14
  br i1 %165, label %166, label %178

; <label>:166:                                    ; preds = %161
  %167 = bitcast i8* %163 to i16*
  %168 = load i16, i16* %167, align 1
  store i16 46, i16* %167, align 1
  %169 = tail call i32* @__errno_location() #1
  store i32 0, i32* %169, align 4
  %170 = tail call i64 @pathconf(i8* %162, i32 3) #11
  %171 = icmp sgt i64 %170, -1
  br i1 %171, label %175, label %172

; <label>:172:                                    ; preds = %166
  %173 = load i32, i32* %169, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176

; <label>:175:                                    ; preds = %172, %166
  br label %176

; <label>:176:                                    ; preds = %175, %172
  %177 = phi i64 [ %170, %175 ], [ 255, %172 ]
  store i16 %168, i16* %167, align 1
  br label %178

; <label>:178:                                    ; preds = %176, %161
  %179 = phi i64 [ %177, %176 ], [ 255, %161 ]
  %180 = icmp ult i64 %179, %164
  br i1 %180, label %181, label %192

; <label>:181:                                    ; preds = %178
  %182 = getelementptr inbounds i8, i8* %162, i64 %3
  %183 = ptrtoint i8* %182 to i64
  %184 = ptrtoint i8* %163 to i64
  %185 = sub i64 %183, %184
  %186 = icmp ugt i64 %179, %185
  %187 = add i64 %179, -1
  %188 = select i1 %186, i64 %185, i64 %187
  %189 = getelementptr inbounds i8, i8* %163, i64 %188
  store i8 126, i8* %189, align 1
  %190 = add i64 %188, 1
  %191 = getelementptr inbounds i8, i8* %163, i64 %190
  store i8 0, i8* %191, align 1
  br label %192

; <label>:192:                                    ; preds = %181, %178, %152
  %193 = phi i8* [ %98, %152 ], [ %162, %178 ], [ %162, %181 ]
  ret i8* %193
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @pathconf(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @get_version(i8*, i8*) local_unnamed_addr #6 {
  %3 = icmp eq i8* %1, null
  br i1 %3, label %12, label %4

; <label>:4:                                      ; preds = %2
  %5 = load i8, i8* %1, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

; <label>:7:                                      ; preds = %4
  %8 = load void ()*, void ()** @argmatch_die, align 8
  %9 = tail call i64 @__xargmatch_internal(i8* %0, i8* nonnull %1, i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @backup_args, i64 0, i64 0), i8* bitcast ([8 x i32]* @backup_types to i8*), i64 4, void ()* %8) #11
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* @backup_types, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  br label %12

; <label>:12:                                     ; preds = %2, %4, %7
  %13 = phi i32 [ %11, %7 ], [ 2, %4 ], [ 2, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @xget_version(i8*, i8*) local_unnamed_addr #6 {
  %3 = icmp eq i8* %1, null
  br i1 %3, label %12, label %4

; <label>:4:                                      ; preds = %2
  %5 = load i8, i8* %1, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

; <label>:7:                                      ; preds = %4
  %8 = load void ()*, void ()** @argmatch_die, align 8
  %9 = tail call i64 @__xargmatch_internal(i8* %0, i8* nonnull %1, i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @backup_args, i64 0, i64 0), i8* bitcast ([8 x i32]* @backup_types to i8*), i64 4, void ()* %8) #11
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* @backup_types, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  br label %23

; <label>:12:                                     ; preds = %4, %2
  %13 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.152, i64 0, i64 0)) #11
  %14 = icmp eq i8* %13, null
  br i1 %14, label %23, label %15

; <label>:15:                                     ; preds = %12
  %16 = load i8, i8* %13, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %23, label %18

; <label>:18:                                     ; preds = %15
  %19 = load void ()*, void ()** @argmatch_die, align 8
  %20 = tail call i64 @__xargmatch_internal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.153, i64 0, i64 0), i8* nonnull %13, i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @backup_args, i64 0, i64 0), i8* bitcast ([8 x i32]* @backup_types to i8*), i64 4, void ()* %19) #11
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* @backup_types, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  br label %23

; <label>:23:                                     ; preds = %18, %15, %12, %7
  %24 = phi i32 [ %11, %7 ], [ %22, %18 ], [ 2, %15 ], [ 2, %12 ]
  ret i32 %24
}

; Function Attrs: nounwind readnone sspstrong uwtable
define i64 @buffer_lcm(i64, i64, i64) local_unnamed_addr #10 {
  %4 = icmp eq i64 %0, 0
  %5 = icmp ne i64 %1, 0
  br i1 %4, label %6, label %8

; <label>:6:                                      ; preds = %3
  %7 = select i1 %5, i64 %1, i64 8192
  br label %22

; <label>:8:                                      ; preds = %3
  br i1 %5, label %9, label %22

; <label>:9:                                      ; preds = %8
  br label %10

; <label>:10:                                     ; preds = %9, %10
  %11 = phi i64 [ %12, %10 ], [ %0, %9 ]
  %12 = phi i64 [ %13, %10 ], [ %1, %9 ]
  %13 = urem i64 %11, %12
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %10

; <label>:15:                                     ; preds = %10
  %16 = udiv i64 %0, %12
  %17 = mul i64 %16, %1
  %18 = icmp ugt i64 %17, %2
  br i1 %18, label %22, label %19

; <label>:19:                                     ; preds = %15
  %20 = udiv i64 %17, %1
  %21 = icmp eq i64 %20, %16
  br i1 %21, label %26, label %22

; <label>:22:                                     ; preds = %15, %19, %8, %6
  %23 = phi i64 [ %7, %6 ], [ %0, %8 ], [ %0, %19 ], [ %0, %15 ]
  %24 = icmp ule i64 %23, %2
  %25 = select i1 %24, i64 %23, i64 %2
  br label %26

; <label>:26:                                     ; preds = %19, %22
  %27 = phi i64 [ %25, %22 ], [ %17, %19 ]
  ret i64 %27
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdin_set_file_name(i8*) local_unnamed_addr #6 {
  store i8* %0, i8** @file_name, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdin() #6 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %2 = tail call i64 @freadahead(%struct._IO_FILE* %1) #14
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %11, label %4

; <label>:4:                                      ; preds = %0
  %5 = tail call i32 @rpl_fseeko(%struct._IO_FILE* %1, i64 0, i32 1) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %9 = tail call i32 @rpl_fflush(%struct._IO_FILE* %8) #11
  %10 = icmp ne i32 %9, 0
  br label %11

; <label>:11:                                     ; preds = %7, %0, %4
  %12 = phi i1 [ false, %4 ], [ false, %0 ], [ %10, %7 ]
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %14 = tail call i32 @close_stream(%struct._IO_FILE* %13) #11
  %15 = icmp ne i32 %14, 0
  %16 = or i1 %12, %15
  br i1 %16, label %17, label %28

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.158, i64 0, i64 0), i32 5) #11
  %19 = load i8*, i8** @file_name, align 8
  %20 = icmp eq i8* %19, null
  %21 = tail call i32* @__errno_location() #1
  %22 = load i32, i32* %21, align 4
  br i1 %20, label %25, label %23

; <label>:23:                                     ; preds = %17
  %24 = tail call i8* @quotearg_colon(i8* nonnull %19) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.159, i64 0, i64 0), i8* %24, i8* %18) #11
  br label %26

; <label>:25:                                     ; preds = %17
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.160, i64 0, i64 0), i8* %18) #11
  br label %26

; <label>:26:                                     ; preds = %25, %23
  tail call void @close_stdout() #11
  %27 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %27) #15
  unreachable

; <label>:28:                                     ; preds = %11
  tail call void @close_stdout() #11
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_file_name(i8*) local_unnamed_addr #6 {
  store i8* %0, i8** @file_name.161, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #6 {
  %2 = zext i1 %0 to i8
  store i8 %2, i8* @ignore_EPIPE, align 1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @close_stdout() local_unnamed_addr #6 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %21, label %4

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1
  %6 = icmp eq i8 %5, 0
  %7 = tail call i32* @__errno_location() #1
  br i1 %6, label %11, label %8

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* %7, align 4
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %21, label %11

; <label>:11:                                     ; preds = %4, %8
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.164, i64 0, i64 0), i32 5) #11
  %13 = load i8*, i8** @file_name.161, align 8
  %14 = icmp eq i8* %13, null
  %15 = load i32, i32* %7, align 4
  br i1 %14, label %18, label %16

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @quotearg_colon(i8* nonnull %13) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.165, i64 0, i64 0), i8* %17, i8* %12) #11
  br label %19

; <label>:18:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.166, i64 0, i64 0), i8* %12) #11
  br label %19

; <label>:19:                                     ; preds = %18, %16
  %20 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %20) #15
  unreachable

; <label>:21:                                     ; preds = %0, %8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = tail call i32 @close_stream(%struct._IO_FILE* %22) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %21
  %26 = load volatile i32, i32* @exit_failure, align 4
  tail call void @_exit(i32 %26) #15
  unreachable

; <label>:27:                                     ; preds = %21
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.__dirstream* @opendir_safer(i8* nocapture readonly) local_unnamed_addr #6 {
  %2 = tail call %struct.__dirstream* @opendir(i8* %0)
  %3 = icmp eq %struct.__dirstream* %2, null
  br i1 %3, label %25, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @dirfd(%struct.__dirstream* nonnull %2) #11
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %7, label %25

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @dup_safer(i32 %5) #11
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

; <label>:10:                                     ; preds = %7
  %11 = tail call i32* @__errno_location() #1
  %12 = load i32, i32* %11, align 4
  br label %20

; <label>:13:                                     ; preds = %7
  %14 = tail call %struct.__dirstream* @fdopendir(i32 %8) #11
  %15 = tail call i32* @__errno_location() #1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq %struct.__dirstream* %14, null
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %13
  %19 = tail call i32 @close(i32 %8) #11
  br label %20

; <label>:20:                                     ; preds = %13, %18, %10
  %21 = phi i32* [ %15, %13 ], [ %15, %18 ], [ %11, %10 ]
  %22 = phi %struct.__dirstream* [ %14, %13 ], [ null, %18 ], [ null, %10 ]
  %23 = phi i32 [ %16, %13 ], [ %16, %18 ], [ %12, %10 ]
  %24 = tail call i32 @closedir(%struct.__dirstream* nonnull %2)
  store i32 %23, i32* %21, align 4
  br label %25

; <label>:25:                                     ; preds = %4, %20, %1
  %26 = phi %struct.__dirstream* [ null, %1 ], [ %22, %20 ], [ %2, %4 ]
  ret %struct.__dirstream* %26
}

; Function Attrs: nounwind
declare noalias %struct.__dirstream* @opendir(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @dirfd(%struct.__dirstream*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i8* @dir_name(i8*) local_unnamed_addr #6 {
  %2 = tail call i8* @mdir_name(i8* %0) #11
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %1
  tail call void @xalloc_die() #15
  unreachable

; <label>:5:                                      ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @dir_len(i8*) local_unnamed_addr #12 {
  %2 = load i8, i8* %0, align 1
  %3 = icmp eq i8 %2, 47
  %4 = zext i1 %3 to i64
  %5 = tail call i8* @last_component(i8* %0) #14
  %6 = ptrtoint i8* %5 to i64
  %7 = ptrtoint i8* %0 to i64
  %8 = sub i64 %6, %7
  br label %9

; <label>:9:                                      ; preds = %12, %1
  %10 = phi i64 [ %8, %1 ], [ %13, %12 ]
  %11 = icmp ult i64 %4, %10
  br i1 %11, label %12, label %17

; <label>:12:                                     ; preds = %9
  %13 = add i64 %10, -1
  %14 = getelementptr inbounds i8, i8* %0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = icmp eq i8 %15, 47
  br i1 %16, label %9, label %17

; <label>:17:                                     ; preds = %12, %9
  ret i64 %10
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @mdir_name(i8*) local_unnamed_addr #6 {
  %2 = load i8, i8* %0, align 1
  %3 = icmp eq i8 %2, 47
  %4 = zext i1 %3 to i64
  %5 = tail call i8* @last_component(i8* %0) #14
  %6 = ptrtoint i8* %5 to i64
  %7 = ptrtoint i8* %0 to i64
  %8 = sub i64 %6, %7
  br label %9

; <label>:9:                                      ; preds = %12, %1
  %10 = phi i64 [ %8, %1 ], [ %13, %12 ]
  %11 = icmp ult i64 %4, %10
  br i1 %11, label %12, label %17

; <label>:12:                                     ; preds = %9
  %13 = add i64 %10, -1
  %14 = getelementptr inbounds i8, i8* %0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = icmp eq i8 %15, 47
  br i1 %16, label %9, label %17

; <label>:17:                                     ; preds = %9, %12
  %18 = icmp eq i64 %10, 0
  %19 = zext i1 %18 to i64
  %20 = add i64 %10, 1
  %21 = add i64 %20, %19
  %22 = tail call noalias i8* @malloc(i64 %21) #11
  %23 = icmp eq i8* %22, null
  br i1 %23, label %29, label %24

; <label>:24:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %22, i8* nonnull %0, i64 %10, i32 1, i1 false)
  br i1 %18, label %25, label %26

; <label>:25:                                     ; preds = %24
  store i8 46, i8* %22, align 1
  br label %26

; <label>:26:                                     ; preds = %25, %24
  %27 = phi i64 [ 1, %25 ], [ %10, %24 ]
  %28 = getelementptr inbounds i8, i8* %22, i64 %27
  store i8 0, i8* %28, align 1
  br label %29

; <label>:29:                                     ; preds = %17, %26
  %30 = phi i8* [ %22, %26 ], [ null, %17 ]
  ret i8* %30
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @last_component(i8* readonly) local_unnamed_addr #12 {
  br label %2

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ]
  %4 = load i8, i8* %3, align 1
  %5 = icmp eq i8 %4, 47
  %6 = getelementptr inbounds i8, i8* %3, i64 1
  br i1 %5, label %2, label %7

; <label>:7:                                      ; preds = %2
  br label %8

; <label>:8:                                      ; preds = %7, %18
  %9 = phi i8 [ %22, %18 ], [ %4, %7 ]
  %10 = phi i8* [ %19, %18 ], [ %3, %7 ]
  %11 = phi i8* [ %21, %18 ], [ %3, %7 ]
  %12 = phi i8 [ %20, %18 ], [ 0, %7 ]
  switch i8 %9, label %13 [
    i8 0, label %23
    i8 47, label %18
  ]

; <label>:13:                                     ; preds = %8
  %14 = and i8 %12, 1
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i8* %10, i8* %11
  %17 = select i1 %15, i8 %12, i8 0
  br label %18

; <label>:18:                                     ; preds = %13, %8
  %19 = phi i8* [ %10, %8 ], [ %16, %13 ]
  %20 = phi i8 [ 1, %8 ], [ %17, %13 ]
  %21 = getelementptr inbounds i8, i8* %11, i64 1
  %22 = load i8, i8* %21, align 1
  br label %8

; <label>:23:                                     ; preds = %8
  ret i8* %10
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @base_len(i8* nocapture readonly) local_unnamed_addr #12 {
  %2 = tail call i64 @strlen(i8* %0) #14
  br label %3

; <label>:3:                                      ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ]
  %5 = icmp ugt i64 %4, 1
  br i1 %5, label %6, label %11

; <label>:6:                                      ; preds = %3
  %7 = add i64 %4, -1
  %8 = getelementptr inbounds i8, i8* %0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 47
  br i1 %10, label %3, label %11

; <label>:11:                                     ; preds = %3, %6
  ret i64 %4
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @strip_trailing_slashes(i8*) local_unnamed_addr #6 {
  %2 = tail call i8* @last_component(i8* %0) #14
  %3 = load i8, i8* %2, align 1
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, i8* %0, i8* %2
  %6 = tail call i64 @base_len(i8* %5) #14
  %7 = getelementptr inbounds i8, i8* %5, i64 %6
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  store i8 0, i8* %7, align 1
  ret i1 %9
}

; Function Attrs: nounwind sspstrong uwtable
define void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #6 {
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #11
  ret void
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #6 {
  %3 = icmp eq %struct._IO_FILE* %0, null
  br i1 %3, label %7, label %4

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #11
  br label %7

; <label>:7:                                      ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @open_safer(i8* nocapture readonly, i32, ...) local_unnamed_addr #6 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = and i32 %1, 64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %25, label %6

; <label>:6:                                      ; preds = %2
  %7 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %7) #11
  call void @llvm.va_start(i8* nonnull %7)
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %9 = load i32, i32* %8, align 16
  %10 = icmp ult i32 %9, 41
  br i1 %10, label %11, label %17

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %13 = load i8*, i8** %12, align 16
  %14 = sext i32 %9 to i64
  %15 = getelementptr i8, i8* %13, i64 %14
  %16 = add i32 %9, 8
  store i32 %16, i32* %8, align 16
  br label %21

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr i8, i8* %19, i64 8
  store i8* %20, i8** %18, align 8
  br label %21

; <label>:21:                                     ; preds = %17, %11
  %22 = phi i8* [ %15, %11 ], [ %19, %17 ]
  %23 = bitcast i8* %22 to i32*
  %24 = load i32, i32* %23, align 4
  call void @llvm.va_end(i8* nonnull %7)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %7) #11
  br label %25

; <label>:25:                                     ; preds = %2, %21
  %26 = phi i32 [ %24, %21 ], [ 0, %2 ]
  %27 = call i32 (i8*, i32, ...) @open(i8* %0, i32 %1, i32 %26) #11
  %28 = call i32 @fd_safer(i32 %27) #11
  ret i32 %28
}

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @record_file(%struct.hash_table*, i8* nonnull, %struct.stat* nocapture nonnull readonly) local_unnamed_addr #6 {
  %4 = icmp eq %struct.hash_table* %0, null
  br i1 %4, label %23, label %5

; <label>:5:                                      ; preds = %3
  %6 = tail call noalias i8* @xmalloc(i64 24) #11
  %7 = tail call noalias i8* @xstrdup(i8* nonnull %1) #11
  %8 = bitcast i8* %6 to i8**
  store i8* %7, i8** %8, align 8
  %9 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i8, i8* %6, i64 8
  %12 = bitcast i8* %11 to i64*
  store i64 %10, i64* %12, align 8
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8, i8* %6, i64 16
  %16 = bitcast i8* %15 to i64*
  store i64 %14, i64* %16, align 8
  %17 = tail call i8* @hash_insert(%struct.hash_table* nonnull %0, i8* %6) #11
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %5
  tail call void @xalloc_die() #15
  unreachable

; <label>:20:                                     ; preds = %5
  %21 = icmp eq i8* %17, %6
  br i1 %21, label %23, label %22

; <label>:22:                                     ; preds = %20
  tail call void @triple_free(i8* %6) #11
  br label %23

; <label>:23:                                     ; preds = %22, %20, %3
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @seen_file(%struct.hash_table*, i8*, %struct.stat* nocapture readonly) local_unnamed_addr #6 {
  %4 = alloca %struct.F_triple, align 8
  %5 = bitcast %struct.F_triple* %4 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %5) #11
  %6 = icmp eq %struct.hash_table* %0, null
  br i1 %6, label %17, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.F_triple, %struct.F_triple* %4, i64 0, i32 0
  store i8* %1, i8** %8, align 8
  %9 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.F_triple, %struct.F_triple* %4, i64 0, i32 1
  store i64 %10, i64* %11, align 8
  %12 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.F_triple, %struct.F_triple* %4, i64 0, i32 2
  store i64 %13, i64* %14, align 8
  %15 = call i8* @hash_lookup(%struct.hash_table* nonnull %0, i8* nonnull %5) #11
  %16 = icmp ne i8* %15, null
  br label %17

; <label>:17:                                     ; preds = %3, %7
  %18 = phi i1 [ %16, %7 ], [ false, %3 ]
  call void @llvm.lifetime.end(i64 24, i8* nonnull %5) #11
  ret i1 %18
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @file_type(%struct.stat* nocapture readonly) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.stat, %struct.stat* %0, i64 0, i32 3
  %3 = load i32, i32* %2, align 8
  %4 = and i32 %3, 61440
  %5 = add nsw i32 %4, -4096
  %6 = lshr exact i32 %5, 12
  %7 = trunc i32 %6 to i20
  switch i20 %7, label %18 [
    i20 7, label %8
    i20 3, label %19
    i20 9, label %13
    i20 5, label %14
    i20 1, label %15
    i20 0, label %16
    i20 11, label %17
  ]

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.stat, %struct.stat* %0, i64 0, i32 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  %12 = select i1 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.191, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.192, i64 0, i64 0)
  br label %19

; <label>:13:                                     ; preds = %1
  br label %19

; <label>:14:                                     ; preds = %1
  br label %19

; <label>:15:                                     ; preds = %1
  br label %19

; <label>:16:                                     ; preds = %1
  br label %19

; <label>:17:                                     ; preds = %1
  br label %19

; <label>:18:                                     ; preds = %1
  br label %19

; <label>:19:                                     ; preds = %1, %18, %17, %16, %15, %14, %13, %8
  %20 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11.193, i64 0, i64 0), %18 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10.194, i64 0, i64 0), %17 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9.195, i64 0, i64 0), %16 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.196, i64 0, i64 0), %15 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7.197, i64 0, i64 0), %14 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3.198, i64 0, i64 0), %13 ], [ %12, %8 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2.199, i64 0, i64 0), %1 ]
  %21 = tail call i8* @dcgettext(i8* null, i8* %20, i32 5) #11
  ret i8* %21
}

; Function Attrs: nounwind sspstrong uwtable
define void @strmode(i32, i8* nocapture) local_unnamed_addr #6 {
  %3 = and i32 %0, 61440
  %4 = add nsw i32 %3, -4096
  %5 = icmp ult i32 %4, 49152
  br i1 %5, label %6, label %11

; <label>:6:                                      ; preds = %2
  %7 = lshr exact i32 %4, 12
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [12 x i8], [12 x i8]* @switch.table, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1
  br label %11

; <label>:11:                                     ; preds = %2, %6
  %12 = phi i8 [ %10, %6 ], [ 63, %2 ]
  store i8 %12, i8* %1, align 1
  %13 = and i32 %0, 256
  %14 = icmp ne i32 %13, 0
  %15 = select i1 %14, i8 114, i8 45
  %16 = getelementptr inbounds i8, i8* %1, i64 1
  store i8 %15, i8* %16, align 1
  %17 = trunc i32 %0 to i8
  %18 = ashr i8 %17, 7
  %19 = and i8 %18, 74
  %20 = add nuw i8 %19, 45
  %21 = getelementptr inbounds i8, i8* %1, i64 2
  store i8 %20, i8* %21, align 1
  %22 = and i32 %0, 2048
  %23 = icmp ne i32 %22, 0
  %24 = and i32 %0, 64
  %25 = icmp ne i32 %24, 0
  %26 = lshr exact i32 %24, 1
  %27 = or i32 %26, 83
  %28 = select i1 %25, i32 120, i32 45
  %29 = select i1 %23, i32 %27, i32 %28
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds i8, i8* %1, i64 3
  store i8 %30, i8* %31, align 1
  %32 = and i32 %0, 32
  %33 = icmp ne i32 %32, 0
  %34 = select i1 %33, i8 114, i8 45
  %35 = getelementptr inbounds i8, i8* %1, i64 4
  store i8 %34, i8* %35, align 1
  %36 = and i32 %0, 16
  %37 = icmp ne i32 %36, 0
  %38 = select i1 %37, i8 119, i8 45
  %39 = getelementptr inbounds i8, i8* %1, i64 5
  store i8 %38, i8* %39, align 1
  %40 = and i32 %0, 1024
  %41 = icmp ne i32 %40, 0
  %42 = and i32 %0, 8
  %43 = icmp ne i32 %42, 0
  %44 = shl nuw nsw i32 %42, 2
  %45 = or i32 %44, 83
  %46 = select i1 %43, i32 120, i32 45
  %47 = select i1 %41, i32 %45, i32 %46
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds i8, i8* %1, i64 6
  store i8 %48, i8* %49, align 1
  %50 = and i32 %0, 4
  %51 = icmp ne i32 %50, 0
  %52 = select i1 %51, i8 114, i8 45
  %53 = getelementptr inbounds i8, i8* %1, i64 7
  store i8 %52, i8* %53, align 1
  %54 = and i32 %0, 2
  %55 = icmp ne i32 %54, 0
  %56 = select i1 %55, i8 119, i8 45
  %57 = getelementptr inbounds i8, i8* %1, i64 8
  store i8 %56, i8* %57, align 1
  %58 = and i32 %0, 512
  %59 = icmp ne i32 %58, 0
  %60 = and i32 %0, 1
  %61 = icmp ne i32 %60, 0
  %62 = shl nuw nsw i32 %60, 5
  %63 = or i32 %62, 84
  %64 = select i1 %61, i32 120, i32 45
  %65 = select i1 %59, i32 %63, i32 %64
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds i8, i8* %1, i64 9
  store i8 %66, i8* %67, align 1
  %68 = getelementptr inbounds i8, i8* %1, i64 10
  store i8 32, i8* %68, align 1
  %69 = getelementptr inbounds i8, i8* %1, i64 11
  store i8 0, i8* %69, align 1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @filemodestring(%struct.stat* nocapture readonly, i8* nocapture) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.stat, %struct.stat* %0, i64 0, i32 3
  %4 = load i32, i32* %3, align 8
  tail call void @strmode(i32 %4, i8* %1)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @file_name_concat(i8*, i8*, i8**) local_unnamed_addr #6 {
  %4 = tail call i8* @mfile_name_concat(i8* %0, i8* %1, i8** %2) #11
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15
  unreachable

; <label>:7:                                      ; preds = %3
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @mfile_name_concat(i8*, i8*, i8**) local_unnamed_addr #6 {
  %4 = tail call i8* @last_component(i8* %0) #14
  %5 = tail call i64 @base_len(i8* %4) #14
  %6 = ptrtoint i8* %4 to i64
  %7 = ptrtoint i8* %0 to i64
  %8 = sub i64 %6, %7
  %9 = add i64 %8, %5
  %10 = icmp eq i64 %5, 0
  br i1 %10, label %16, label %11

; <label>:11:                                     ; preds = %3
  %12 = add i64 %5, -1
  %13 = getelementptr inbounds i8, i8* %4, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 47
  br label %16

; <label>:16:                                     ; preds = %3, %11
  %17 = phi i1 [ false, %3 ], [ %15, %11 ]
  br label %18

; <label>:18:                                     ; preds = %18, %16
  %19 = phi i8* [ %1, %16 ], [ %22, %18 ]
  %20 = load i8, i8* %19, align 1
  %21 = icmp eq i8 %20, 47
  %22 = getelementptr inbounds i8, i8* %19, i64 1
  br i1 %21, label %18, label %23

; <label>:23:                                     ; preds = %18
  %24 = zext i1 %17 to i64
  %25 = tail call i64 @strlen(i8* %19) #14
  %26 = add i64 %9, 1
  %27 = add i64 %26, %24
  %28 = add i64 %27, %25
  %29 = tail call noalias i8* @malloc(i64 %28) #11
  %30 = icmp eq i8* %29, null
  br i1 %30, label %44, label %31

; <label>:31:                                     ; preds = %23
  %32 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %29, i1 false) #11
  %33 = tail call i8* @__mempcpy_chk(i8* nonnull %29, i8* nonnull %0, i64 %9, i64 %32) #11
  store i8 47, i8* %33, align 1
  %34 = getelementptr inbounds i8, i8* %33, i64 %24
  %35 = icmp eq i8** %2, null
  br i1 %35, label %41, label %36

; <label>:36:                                     ; preds = %31
  %37 = load i8, i8* %1, align 1
  %38 = icmp eq i8 %37, 47
  %39 = sext i1 %38 to i64
  %40 = getelementptr inbounds i8, i8* %34, i64 %39
  store i8* %40, i8** %2, align 8
  br label %41

; <label>:41:                                     ; preds = %31, %36
  %42 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %34, i1 false) #11
  %43 = tail call i8* @__mempcpy_chk(i8* nonnull %34, i8* nonnull %19, i64 %25, i64 %42) #11
  store i8 0, i8* %43, align 1
  br label %44

; <label>:44:                                     ; preds = %23, %41
  %45 = phi i8* [ %29, %41 ], [ null, %23 ]
  ret i8* %45
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @full_write(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %20, label %5

; <label>:5:                                      ; preds = %3
  br label %6

; <label>:6:                                      ; preds = %5, %13
  %7 = phi i64 [ %14, %13 ], [ 0, %5 ]
  %8 = phi i8* [ %15, %13 ], [ %1, %5 ]
  %9 = phi i64 [ %16, %13 ], [ %2, %5 ]
  %10 = tail call i64 @safe_write(i32 %0, i8* %8, i64 %9) #11
  switch i64 %10, label %13 [
    i64 -1, label %18
    i64 0, label %11
  ]

; <label>:11:                                     ; preds = %6
  %12 = tail call i32* @__errno_location() #1
  store i32 28, i32* %12, align 4
  br label %20

; <label>:13:                                     ; preds = %6
  %14 = add i64 %10, %7
  %15 = getelementptr inbounds i8, i8* %8, i64 %10
  %16 = sub i64 %9, %10
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %6

; <label>:18:                                     ; preds = %6, %13
  %19 = phi i64 [ %7, %6 ], [ %14, %13 ]
  br label %20

; <label>:20:                                     ; preds = %18, %11, %3
  %21 = phi i64 [ 0, %3 ], [ %7, %11 ], [ %19, %18 ]
  ret i64 %21
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @hash_get_n_buckets(%struct.hash_table* nocapture readonly) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %3 = load i64, i64* %2, align 8
  ret i64 %3
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @hash_get_n_buckets_used(%struct.hash_table* nocapture readonly) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %3 = load i64, i64* %2, align 8
  ret i64 %3
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @hash_get_n_entries(%struct.hash_table* nocapture readonly) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %3 = load i64, i64* %2, align 8
  ret i64 %3
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @hash_get_max_bucket_length(%struct.hash_table* nocapture readonly) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %3 = load %struct.hash_entry*, %struct.hash_entry** %2, align 8
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %6 = icmp ult %struct.hash_entry* %3, %5
  br i1 %6, label %7, label %65

; <label>:7:                                      ; preds = %1
  %8 = bitcast %struct.hash_entry* %5 to i8*
  %9 = ptrtoint %struct.hash_entry* %3 to i64
  %10 = xor i64 %9, -1
  %11 = getelementptr i8, i8* %8, i64 %10
  %12 = ptrtoint i8* %11 to i64
  %13 = lshr i64 %12, 4
  %14 = and i64 %13, 1
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %33

; <label>:16:                                     ; preds = %7
  br label %17

; <label>:17:                                     ; preds = %16
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %3, i64 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %30, label %21

; <label>:21:                                     ; preds = %17
  br label %22

; <label>:22:                                     ; preds = %22, %21
  %23 = phi %struct.hash_entry* [ %26, %22 ], [ %3, %21 ]
  %24 = phi i64 [ %28, %22 ], [ 1, %21 ]
  %25 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %23, i64 0, i32 1
  %26 = load %struct.hash_entry*, %struct.hash_entry** %25, align 8
  %27 = icmp eq %struct.hash_entry* %26, null
  %28 = add i64 %24, 1
  br i1 %27, label %29, label %22

; <label>:29:                                     ; preds = %22
  br label %30

; <label>:30:                                     ; preds = %29, %17
  %31 = phi i64 [ %24, %29 ], [ 0, %17 ]
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %3, i64 1
  br label %33

; <label>:33:                                     ; preds = %30, %7
  %34 = phi i64 [ 0, %7 ], [ %31, %30 ]
  %35 = phi %struct.hash_entry* [ %3, %7 ], [ %32, %30 ]
  %36 = phi i64 [ undef, %7 ], [ %31, %30 ]
  %37 = icmp eq i64 %13, 0
  br i1 %37, label %63, label %38

; <label>:38:                                     ; preds = %33
  br label %39

; <label>:39:                                     ; preds = %78, %38
  %40 = phi i64 [ %34, %38 ], [ %79, %78 ]
  %41 = phi %struct.hash_entry* [ %35, %38 ], [ %80, %78 ]
  %42 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %56, label %45

; <label>:45:                                     ; preds = %39
  br label %46

; <label>:46:                                     ; preds = %45, %46
  %47 = phi %struct.hash_entry* [ %50, %46 ], [ %41, %45 ]
  %48 = phi i64 [ %52, %46 ], [ 1, %45 ]
  %49 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %47, i64 0, i32 1
  %50 = load %struct.hash_entry*, %struct.hash_entry** %49, align 8
  %51 = icmp eq %struct.hash_entry* %50, null
  %52 = add i64 %48, 1
  br i1 %51, label %53, label %46

; <label>:53:                                     ; preds = %46
  %54 = icmp ugt i64 %48, %40
  %55 = select i1 %54, i64 %48, i64 %40
  br label %56

; <label>:56:                                     ; preds = %39, %53
  %57 = phi i64 [ %55, %53 ], [ %40, %39 ]
  %58 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 1
  %59 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %58, i64 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %78, label %67

; <label>:62:                                     ; preds = %78
  br label %63

; <label>:63:                                     ; preds = %33, %62
  %64 = phi i64 [ %36, %33 ], [ %79, %62 ]
  br label %65

; <label>:65:                                     ; preds = %63, %1
  %66 = phi i64 [ 0, %1 ], [ %64, %63 ]
  ret i64 %66

; <label>:67:                                     ; preds = %56
  br label %68

; <label>:68:                                     ; preds = %68, %67
  %69 = phi %struct.hash_entry* [ %72, %68 ], [ %58, %67 ]
  %70 = phi i64 [ %74, %68 ], [ 1, %67 ]
  %71 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %69, i64 0, i32 1
  %72 = load %struct.hash_entry*, %struct.hash_entry** %71, align 8
  %73 = icmp eq %struct.hash_entry* %72, null
  %74 = add i64 %70, 1
  br i1 %73, label %75, label %68

; <label>:75:                                     ; preds = %68
  %76 = icmp ugt i64 %70, %57
  %77 = select i1 %76, i64 %70, i64 %57
  br label %78

; <label>:78:                                     ; preds = %75, %56
  %79 = phi i64 [ %77, %75 ], [ %57, %56 ]
  %80 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 2
  %81 = icmp ult %struct.hash_entry* %80, %5
  br i1 %81, label %39, label %62
}

; Function Attrs: nounwind readonly sspstrong uwtable
define zeroext i1 @hash_table_ok(%struct.hash_table* nocapture readonly) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %3 = load %struct.hash_entry*, %struct.hash_entry** %2, align 8
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %6 = icmp ult %struct.hash_entry* %3, %5
  br i1 %6, label %7, label %70

; <label>:7:                                      ; preds = %1
  %8 = bitcast %struct.hash_entry* %5 to i8*
  %9 = ptrtoint %struct.hash_entry* %3 to i64
  %10 = xor i64 %9, -1
  %11 = getelementptr i8, i8* %8, i64 %10
  %12 = ptrtoint i8* %11 to i64
  %13 = lshr i64 %12, 4
  %14 = and i64 %13, 1
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %34

; <label>:16:                                     ; preds = %7
  br label %17

; <label>:17:                                     ; preds = %16
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %3, i64 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %30, label %21

; <label>:21:                                     ; preds = %17
  br label %22

; <label>:22:                                     ; preds = %22, %21
  %23 = phi i64 [ %25, %22 ], [ 0, %21 ]
  %24 = phi %struct.hash_entry* [ %27, %22 ], [ %3, %21 ]
  %25 = add i64 %23, 1
  %26 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %24, i64 0, i32 1
  %27 = load %struct.hash_entry*, %struct.hash_entry** %26, align 8
  %28 = icmp eq %struct.hash_entry* %27, null
  br i1 %28, label %29, label %22

; <label>:29:                                     ; preds = %22
  br label %30

; <label>:30:                                     ; preds = %29, %17
  %31 = phi i64 [ 0, %17 ], [ 1, %29 ]
  %32 = phi i64 [ 0, %17 ], [ %25, %29 ]
  %33 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %3, i64 1
  br label %34

; <label>:34:                                     ; preds = %30, %7
  %35 = phi i64 [ 0, %7 ], [ %32, %30 ]
  %36 = phi i64 [ 0, %7 ], [ %31, %30 ]
  %37 = phi %struct.hash_entry* [ %3, %7 ], [ %33, %30 ]
  %38 = phi i64 [ undef, %7 ], [ %31, %30 ]
  %39 = phi i64 [ undef, %7 ], [ %32, %30 ]
  %40 = icmp eq i64 %13, 0
  br i1 %40, label %67, label %41

; <label>:41:                                     ; preds = %34
  br label %42

; <label>:42:                                     ; preds = %93, %41
  %43 = phi i64 [ %35, %41 ], [ %95, %93 ]
  %44 = phi i64 [ %36, %41 ], [ %94, %93 ]
  %45 = phi %struct.hash_entry* [ %37, %41 ], [ %96, %93 ]
  %46 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %45, i64 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %59, label %49

; <label>:49:                                     ; preds = %42
  br label %50

; <label>:50:                                     ; preds = %49, %50
  %51 = phi i64 [ %53, %50 ], [ %43, %49 ]
  %52 = phi %struct.hash_entry* [ %55, %50 ], [ %45, %49 ]
  %53 = add i64 %51, 1
  %54 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %52, i64 0, i32 1
  %55 = load %struct.hash_entry*, %struct.hash_entry** %54, align 8
  %56 = icmp eq %struct.hash_entry* %55, null
  br i1 %56, label %57, label %50

; <label>:57:                                     ; preds = %50
  %58 = add i64 %44, 1
  br label %59

; <label>:59:                                     ; preds = %57, %42
  %60 = phi i64 [ %44, %42 ], [ %58, %57 ]
  %61 = phi i64 [ %43, %42 ], [ %53, %57 ]
  %62 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %45, i64 1
  %63 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %62, i64 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %93, label %83

; <label>:66:                                     ; preds = %93
  br label %67

; <label>:67:                                     ; preds = %34, %66
  %68 = phi i64 [ %38, %34 ], [ %94, %66 ]
  %69 = phi i64 [ %39, %34 ], [ %95, %66 ]
  br label %70

; <label>:70:                                     ; preds = %67, %1
  %71 = phi i64 [ 0, %1 ], [ %68, %67 ]
  %72 = phi i64 [ 0, %1 ], [ %69, %67 ]
  %73 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %80

; <label>:76:                                     ; preds = %70
  %77 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %72, %78
  br i1 %79, label %81, label %80

; <label>:80:                                     ; preds = %76, %70
  br label %81

; <label>:81:                                     ; preds = %76, %80
  %82 = phi i1 [ false, %80 ], [ true, %76 ]
  ret i1 %82

; <label>:83:                                     ; preds = %59
  br label %84

; <label>:84:                                     ; preds = %84, %83
  %85 = phi i64 [ %87, %84 ], [ %61, %83 ]
  %86 = phi %struct.hash_entry* [ %89, %84 ], [ %62, %83 ]
  %87 = add i64 %85, 1
  %88 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %86, i64 0, i32 1
  %89 = load %struct.hash_entry*, %struct.hash_entry** %88, align 8
  %90 = icmp eq %struct.hash_entry* %89, null
  br i1 %90, label %91, label %84

; <label>:91:                                     ; preds = %84
  %92 = add i64 %60, 1
  br label %93

; <label>:93:                                     ; preds = %91, %59
  %94 = phi i64 [ %60, %59 ], [ %92, %91 ]
  %95 = phi i64 [ %61, %59 ], [ %87, %91 ]
  %96 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %45, i64 2
  %97 = icmp ult %struct.hash_entry* %96, %5
  br i1 %97, label %42, label %66
}

; Function Attrs: nounwind sspstrong uwtable
define void @hash_print_statistics(%struct.hash_table* nocapture readonly, %struct._IO_FILE*) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %10 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8
  %11 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %12 = load %struct.hash_entry*, %struct.hash_entry** %11, align 8
  %13 = icmp ult %struct.hash_entry* %10, %12
  br i1 %13, label %14, label %72

; <label>:14:                                     ; preds = %2
  %15 = bitcast %struct.hash_entry* %12 to i8*
  %16 = ptrtoint %struct.hash_entry* %10 to i64
  %17 = xor i64 %16, -1
  %18 = getelementptr i8, i8* %15, i64 %17
  %19 = ptrtoint i8* %18 to i64
  %20 = lshr i64 %19, 4
  %21 = and i64 %20, 1
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %40

; <label>:23:                                     ; preds = %14
  br label %24

; <label>:24:                                     ; preds = %23
  %25 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %10, i64 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %37, label %28

; <label>:28:                                     ; preds = %24
  br label %29

; <label>:29:                                     ; preds = %29, %28
  %30 = phi %struct.hash_entry* [ %33, %29 ], [ %10, %28 ]
  %31 = phi i64 [ %35, %29 ], [ 1, %28 ]
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %30, i64 0, i32 1
  %33 = load %struct.hash_entry*, %struct.hash_entry** %32, align 8
  %34 = icmp eq %struct.hash_entry* %33, null
  %35 = add i64 %31, 1
  br i1 %34, label %36, label %29

; <label>:36:                                     ; preds = %29
  br label %37

; <label>:37:                                     ; preds = %36, %24
  %38 = phi i64 [ %31, %36 ], [ 0, %24 ]
  %39 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %10, i64 1
  br label %40

; <label>:40:                                     ; preds = %37, %14
  %41 = phi i64 [ 0, %14 ], [ %38, %37 ]
  %42 = phi %struct.hash_entry* [ %10, %14 ], [ %39, %37 ]
  %43 = phi i64 [ undef, %14 ], [ %38, %37 ]
  %44 = icmp eq i64 %20, 0
  br i1 %44, label %70, label %45

; <label>:45:                                     ; preds = %40
  br label %46

; <label>:46:                                     ; preds = %93, %45
  %47 = phi i64 [ %41, %45 ], [ %94, %93 ]
  %48 = phi %struct.hash_entry* [ %42, %45 ], [ %95, %93 ]
  %49 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %48, i64 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %63, label %52

; <label>:52:                                     ; preds = %46
  br label %53

; <label>:53:                                     ; preds = %52, %53
  %54 = phi %struct.hash_entry* [ %57, %53 ], [ %48, %52 ]
  %55 = phi i64 [ %59, %53 ], [ 1, %52 ]
  %56 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %54, i64 0, i32 1
  %57 = load %struct.hash_entry*, %struct.hash_entry** %56, align 8
  %58 = icmp eq %struct.hash_entry* %57, null
  %59 = add i64 %55, 1
  br i1 %58, label %60, label %53

; <label>:60:                                     ; preds = %53
  %61 = icmp ugt i64 %55, %47
  %62 = select i1 %61, i64 %55, i64 %47
  br label %63

; <label>:63:                                     ; preds = %60, %46
  %64 = phi i64 [ %62, %60 ], [ %47, %46 ]
  %65 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %48, i64 1
  %66 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %65, i64 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %93, label %82

; <label>:69:                                     ; preds = %93
  br label %70

; <label>:70:                                     ; preds = %40, %69
  %71 = phi i64 [ %43, %40 ], [ %94, %69 ]
  br label %72

; <label>:72:                                     ; preds = %70, %2
  %73 = phi i64 [ 0, %2 ], [ %71, %70 ]
  %74 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.208, i64 0, i64 0), i64 %4) #11
  %75 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1.209, i64 0, i64 0), i64 %6) #11
  %76 = uitofp i64 %8 to double
  %77 = fmul double %76, 1.000000e+02
  %78 = uitofp i64 %6 to double
  %79 = fdiv double %77, %78
  %80 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.210, i64 0, i64 0), i64 %8, double %79) #11
  %81 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3.211, i64 0, i64 0), i64 %73) #11
  ret void

; <label>:82:                                     ; preds = %63
  br label %83

; <label>:83:                                     ; preds = %83, %82
  %84 = phi %struct.hash_entry* [ %87, %83 ], [ %65, %82 ]
  %85 = phi i64 [ %89, %83 ], [ 1, %82 ]
  %86 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %84, i64 0, i32 1
  %87 = load %struct.hash_entry*, %struct.hash_entry** %86, align 8
  %88 = icmp eq %struct.hash_entry* %87, null
  %89 = add i64 %85, 1
  br i1 %88, label %90, label %83

; <label>:90:                                     ; preds = %83
  %91 = icmp ugt i64 %85, %64
  %92 = select i1 %91, i64 %85, i64 %64
  br label %93

; <label>:93:                                     ; preds = %90, %63
  %94 = phi i64 [ %92, %90 ], [ %64, %63 ]
  %95 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %48, i64 2
  %96 = icmp ult %struct.hash_entry* %95, %12
  br i1 %96, label %46, label %69
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @hash_lookup(%struct.hash_table* nocapture readonly, i8*) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = tail call i64 %4(i8* %1, i64 %6) #11
  %8 = load i64, i64* %5, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %2
  tail call void @abort() #15
  unreachable

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7
  %15 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i64 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, null
  %18 = icmp eq %struct.hash_entry* %14, null
  %19 = or i1 %17, %18
  br i1 %19, label %42, label %20

; <label>:20:                                     ; preds = %11
  %21 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  %22 = icmp eq i8* %16, %1
  br i1 %22, label %42, label %23

; <label>:23:                                     ; preds = %20
  br label %24

; <label>:24:                                     ; preds = %23, %36
  %25 = phi %struct.hash_entry* [ %34, %36 ], [ %14, %23 ]
  %26 = phi i8* [ %38, %36 ], [ %16, %23 ]
  %27 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %21, align 8
  %28 = tail call zeroext i1 %27(i8* %1, i8* %26) #11
  br i1 %28, label %29, label %32

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %25, i64 0, i32 0
  %31 = load i8*, i8** %30, align 8
  br label %42

; <label>:32:                                     ; preds = %24
  %33 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %25, i64 0, i32 1
  %34 = load %struct.hash_entry*, %struct.hash_entry** %33, align 8
  %35 = icmp eq %struct.hash_entry* %34, null
  br i1 %35, label %40, label %36

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %34, i64 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, %1
  br i1 %39, label %40, label %24

; <label>:40:                                     ; preds = %32, %36
  %41 = phi i8* [ null, %32 ], [ %1, %36 ]
  br label %42

; <label>:42:                                     ; preds = %40, %20, %29, %11
  %43 = phi i8* [ null, %11 ], [ %31, %29 ], [ %1, %20 ], [ %41, %40 ]
  ret i8* %43
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @hash_get_first(%struct.hash_table* nocapture readonly) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %3 = load i64, i64* %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %23, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %8 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %9 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8
  %10 = icmp ult %struct.hash_entry* %7, %9
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %5
  br label %16

; <label>:12:                                     ; preds = %16
  %13 = icmp ult %struct.hash_entry* %21, %9
  br i1 %13, label %16, label %14

; <label>:14:                                     ; preds = %12
  br label %15

; <label>:15:                                     ; preds = %14, %5
  tail call void @abort() #15
  unreachable

; <label>:16:                                     ; preds = %11, %12
  %17 = phi %struct.hash_entry* [ %21, %12 ], [ %7, %11 ]
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp eq i8* %19, null
  %21 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 1
  br i1 %20, label %12, label %22

; <label>:22:                                     ; preds = %16
  br label %23

; <label>:23:                                     ; preds = %22, %1
  %24 = phi i8* [ null, %1 ], [ %19, %22 ]
  ret i8* %24
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @hash_get_next(%struct.hash_table* nocapture readonly, i8*) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = tail call i64 %4(i8* %1, i64 %6) #11
  %8 = load i64, i64* %5, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %2
  tail call void @abort() #15
  unreachable

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7
  br label %15

; <label>:15:                                     ; preds = %27, %11
  %16 = phi %struct.hash_entry* [ %14, %11 ], [ %21, %27 ]
  %17 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i64 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, %1
  %20 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i64 0, i32 1
  %21 = load %struct.hash_entry*, %struct.hash_entry** %20, align 8
  %22 = icmp eq %struct.hash_entry* %21, null
  br i1 %19, label %23, label %27

; <label>:23:                                     ; preds = %15
  br i1 %22, label %29, label %24

; <label>:24:                                     ; preds = %23
  %25 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 0, i32 0
  %26 = load i8*, i8** %25, align 8
  br label %42

; <label>:27:                                     ; preds = %15
  br i1 %22, label %28, label %15

; <label>:28:                                     ; preds = %27
  br label %29

; <label>:29:                                     ; preds = %28, %23
  %30 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %31 = load %struct.hash_entry*, %struct.hash_entry** %30, align 8
  br label %32

; <label>:32:                                     ; preds = %29, %36
  %33 = phi %struct.hash_entry* [ %34, %36 ], [ %14, %29 ]
  %34 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i64 1
  %35 = icmp ult %struct.hash_entry* %34, %31
  br i1 %35, label %36, label %40

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %34, i64 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %32, label %40

; <label>:40:                                     ; preds = %36, %32
  %41 = phi i8* [ null, %32 ], [ %38, %36 ]
  br label %42

; <label>:42:                                     ; preds = %40, %24
  %43 = phi i8* [ %26, %24 ], [ %41, %40 ]
  ret i8* %43
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @hash_get_entries(%struct.hash_table* nocapture readonly, i8** nocapture, i64) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %8 = icmp ult %struct.hash_entry* %5, %7
  br i1 %8, label %9, label %42

; <label>:9:                                      ; preds = %3
  br label %10

; <label>:10:                                     ; preds = %9, %35
  %11 = phi %struct.hash_entry* [ %36, %35 ], [ %7, %9 ]
  %12 = phi %struct.hash_entry* [ %38, %35 ], [ %5, %9 ]
  %13 = phi i64 [ %37, %35 ], [ 0, %9 ]
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i64 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %15, null
  %17 = icmp eq %struct.hash_entry* %12, null
  %18 = or i1 %16, %17
  br i1 %18, label %35, label %19

; <label>:19:                                     ; preds = %10
  br label %20

; <label>:20:                                     ; preds = %19, %24
  %21 = phi %struct.hash_entry* [ %31, %24 ], [ %12, %19 ]
  %22 = phi i64 [ %27, %24 ], [ %13, %19 ]
  %23 = icmp ult i64 %22, %2
  br i1 %23, label %24, label %40

; <label>:24:                                     ; preds = %20
  %25 = bitcast %struct.hash_entry* %21 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %22, 1
  %28 = getelementptr inbounds i8*, i8** %1, i64 %22
  %29 = bitcast i8** %28 to i64*
  store i64 %26, i64* %29, align 8
  %30 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 0, i32 1
  %31 = load %struct.hash_entry*, %struct.hash_entry** %30, align 8
  %32 = icmp eq %struct.hash_entry* %31, null
  br i1 %32, label %33, label %20

; <label>:33:                                     ; preds = %24
  %34 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  br label %35

; <label>:35:                                     ; preds = %33, %10
  %36 = phi %struct.hash_entry* [ %11, %10 ], [ %34, %33 ]
  %37 = phi i64 [ %13, %10 ], [ %27, %33 ]
  %38 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i64 1
  %39 = icmp ult %struct.hash_entry* %38, %36
  br i1 %39, label %10, label %41

; <label>:40:                                     ; preds = %20
  br label %42

; <label>:41:                                     ; preds = %35
  br label %42

; <label>:42:                                     ; preds = %41, %40, %3
  %43 = phi i64 [ 0, %3 ], [ %22, %40 ], [ %37, %41 ]
  ret i64 %43
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @hash_do_for_each(%struct.hash_table* nocapture readonly, i1 (i8*, i8*)* nocapture, i8*) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %8 = icmp ult %struct.hash_entry* %5, %7
  br i1 %8, label %9, label %43

; <label>:9:                                      ; preds = %3
  br label %10

; <label>:10:                                     ; preds = %9, %35
  %11 = phi %struct.hash_entry* [ %36, %35 ], [ %7, %9 ]
  %12 = phi %struct.hash_entry* [ %38, %35 ], [ %5, %9 ]
  %13 = phi i64 [ %37, %35 ], [ 0, %9 ]
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i64 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %15, null
  %17 = icmp eq %struct.hash_entry* %12, null
  %18 = or i1 %16, %17
  br i1 %18, label %35, label %19

; <label>:19:                                     ; preds = %10
  %20 = tail call zeroext i1 %1(i8* %15, i8* %2) #11
  br i1 %20, label %21, label %41

; <label>:21:                                     ; preds = %19
  br label %22

; <label>:22:                                     ; preds = %21, %29
  %23 = phi i64 [ %25, %29 ], [ %13, %21 ]
  %24 = phi %struct.hash_entry* [ %27, %29 ], [ %12, %21 ]
  %25 = add i64 %23, 1
  %26 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %24, i64 0, i32 1
  %27 = load %struct.hash_entry*, %struct.hash_entry** %26, align 8
  %28 = icmp eq %struct.hash_entry* %27, null
  br i1 %28, label %33, label %29

; <label>:29:                                     ; preds = %22
  %30 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %27, i64 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = tail call zeroext i1 %1(i8* %31, i8* %2) #11
  br i1 %32, label %22, label %40

; <label>:33:                                     ; preds = %22
  %34 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  br label %35

; <label>:35:                                     ; preds = %33, %10
  %36 = phi %struct.hash_entry* [ %11, %10 ], [ %34, %33 ]
  %37 = phi i64 [ %13, %10 ], [ %25, %33 ]
  %38 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i64 1
  %39 = icmp ult %struct.hash_entry* %38, %36
  br i1 %39, label %10, label %41

; <label>:40:                                     ; preds = %29
  br label %43

; <label>:41:                                     ; preds = %19, %35
  %42 = phi i64 [ %37, %35 ], [ %13, %19 ]
  br label %43

; <label>:43:                                     ; preds = %41, %40, %3
  %44 = phi i64 [ 0, %3 ], [ %25, %40 ], [ %42, %41 ]
  ret i64 %44
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @hash_string(i8* nocapture readonly, i64) local_unnamed_addr #12 {
  %3 = load i8, i8* %0, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %18, label %5

; <label>:5:                                      ; preds = %2
  br label %6

; <label>:6:                                      ; preds = %5, %6
  %7 = phi i8 [ %15, %6 ], [ %3, %5 ]
  %8 = phi i8* [ %14, %6 ], [ %0, %5 ]
  %9 = phi i64 [ %13, %6 ], [ 0, %5 ]
  %10 = mul i64 %9, 31
  %11 = zext i8 %7 to i64
  %12 = add i64 %11, %10
  %13 = urem i64 %12, %1
  %14 = getelementptr inbounds i8, i8* %8, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %6

; <label>:17:                                     ; preds = %6
  br label %18

; <label>:18:                                     ; preds = %17, %2
  %19 = phi i64 [ 0, %2 ], [ %13, %17 ]
  ret i64 %19
}

; Function Attrs: nounwind sspstrong uwtable
define void @hash_reset_tuning(%struct.hash_tuning* nocapture) local_unnamed_addr #6 {
  %2 = bitcast %struct.hash_tuning* %0 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast (%struct.hash_tuning* @default_tuning to i8*), i64 20, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.hash_table* @hash_initialize(i64, %struct.hash_tuning*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #6 {
  %6 = icmp eq i64 (i8*, i64)* %2, null
  %7 = select i1 %6, i64 (i8*, i64)* @raw_hasher, i64 (i8*, i64)* %2
  %8 = icmp eq i1 (i8*, i8*)* %3, null
  %9 = select i1 %8, i1 (i8*, i8*)* @raw_comparator, i1 (i8*, i8*)* %3
  %10 = tail call noalias i8* @malloc(i64 80) #11
  %11 = bitcast i8* %10 to %struct.hash_table*
  %12 = icmp eq i8* %10, null
  br i1 %12, label %110, label %13

; <label>:13:                                     ; preds = %5
  %14 = icmp eq %struct.hash_tuning* %1, null
  %15 = select i1 %14, %struct.hash_tuning* @default_tuning, %struct.hash_tuning* %1
  %16 = getelementptr inbounds i8, i8* %10, i64 40
  %17 = bitcast i8* %16 to %struct.hash_tuning**
  store %struct.hash_tuning* %15, %struct.hash_tuning** %17, align 8
  %18 = icmp eq %struct.hash_tuning* %15, @default_tuning
  br i1 %18, label %42, label %19

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 2
  %21 = load float, float* %20, align 4
  %22 = fcmp ogt float %21, 0x3FB99999A0000000
  %23 = fcmp olt float %21, 0x3FECCCCCC0000000
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %109

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 3
  %27 = load float, float* %26, align 4
  %28 = fcmp ogt float %27, 0x3FF19999A0000000
  br i1 %28, label %29, label %109

; <label>:29:                                     ; preds = %25
  %30 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 0
  %31 = load float, float* %30, align 4
  %32 = fcmp ult float %31, 0.000000e+00
  br i1 %32, label %109, label %33

; <label>:33:                                     ; preds = %29
  %34 = fadd float %31, 0x3FB99999A0000000
  %35 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 1
  %36 = load float, float* %35, align 4
  %37 = fcmp olt float %34, %36
  %38 = fcmp ole float %36, 1.000000e+00
  %39 = and i1 %38, %37
  %40 = fcmp olt float %34, %21
  %41 = and i1 %40, %39
  br i1 %41, label %42, label %109

; <label>:42:                                     ; preds = %13, %33
  %43 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 4
  %44 = load i8, i8* %43, align 4
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %53

; <label>:46:                                     ; preds = %42
  %47 = uitofp i64 %0 to float
  %48 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 2
  %49 = load float, float* %48, align 4
  %50 = fdiv float %47, %49
  %51 = fcmp ult float %50, 0x43F0000000000000
  %52 = fptoui float %50 to i64
  br i1 %51, label %53, label %109

; <label>:53:                                     ; preds = %46, %42
  %54 = phi i64 [ %0, %42 ], [ %52, %46 ]
  %55 = icmp ugt i64 %54, 10
  %56 = select i1 %55, i64 %54, i64 10
  %57 = or i64 %56, 1
  %58 = icmp eq i64 %57, -1
  br i1 %58, label %109, label %59

; <label>:59:                                     ; preds = %53
  br label %60

; <label>:60:                                     ; preds = %59, %81
  %61 = phi i64 [ %82, %81 ], [ %57, %59 ]
  %62 = icmp ugt i64 %61, 9
  br i1 %62, label %63, label %77

; <label>:63:                                     ; preds = %60
  br label %64

; <label>:64:                                     ; preds = %63, %69
  %65 = phi i64 [ %72, %69 ], [ 9, %63 ]
  %66 = phi i64 [ %73, %69 ], [ 3, %63 ]
  %67 = urem i64 %61, %66
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %75, label %69

; <label>:69:                                     ; preds = %64
  %70 = shl i64 %66, 2
  %71 = add i64 %65, 4
  %72 = add i64 %71, %70
  %73 = add i64 %66, 2
  %74 = icmp ult i64 %72, %61
  br i1 %74, label %64, label %75

; <label>:75:                                     ; preds = %64, %69
  %76 = phi i64 [ %73, %69 ], [ %66, %64 ]
  br label %77

; <label>:77:                                     ; preds = %75, %60
  %78 = phi i64 [ 3, %60 ], [ %76, %75 ]
  %79 = urem i64 %61, %78
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %84

; <label>:81:                                     ; preds = %77
  %82 = add i64 %61, 2
  %83 = icmp eq i64 %82, -1
  br i1 %83, label %108, label %60

; <label>:84:                                     ; preds = %77
  %85 = icmp ugt i64 %61, 1152921504606846975
  br i1 %85, label %109, label %86

; <label>:86:                                     ; preds = %84
  %87 = getelementptr inbounds i8, i8* %10, i64 16
  %88 = bitcast i8* %87 to i64*
  store i64 %61, i64* %88, align 8
  %89 = icmp eq i64 %61, 0
  br i1 %89, label %109, label %90

; <label>:90:                                     ; preds = %86
  %91 = tail call i8* @rpl_calloc(i64 %61, i64 16) #11
  %92 = bitcast i8* %10 to i8**
  store i8* %91, i8** %92, align 8
  %93 = icmp eq i8* %91, null
  br i1 %93, label %109, label %94

; <label>:94:                                     ; preds = %90
  %95 = bitcast i8* %91 to %struct.hash_entry*
  %96 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %95, i64 %61
  %97 = getelementptr inbounds i8, i8* %10, i64 8
  %98 = bitcast i8* %97 to %struct.hash_entry**
  store %struct.hash_entry* %96, %struct.hash_entry** %98, align 8
  %99 = getelementptr inbounds i8, i8* %10, i64 24
  %100 = getelementptr inbounds i8, i8* %10, i64 48
  %101 = bitcast i8* %100 to i64 (i8*, i64)**
  call void @llvm.memset.p0i8.i64(i8* %99, i8 0, i64 16, i32 8, i1 false)
  store i64 (i8*, i64)* %7, i64 (i8*, i64)** %101, align 8
  %102 = getelementptr inbounds i8, i8* %10, i64 56
  %103 = bitcast i8* %102 to i1 (i8*, i8*)**
  store i1 (i8*, i8*)* %9, i1 (i8*, i8*)** %103, align 8
  %104 = getelementptr inbounds i8, i8* %10, i64 64
  %105 = bitcast i8* %104 to void (i8*)**
  store void (i8*)* %4, void (i8*)** %105, align 8
  %106 = getelementptr inbounds i8, i8* %10, i64 72
  %107 = bitcast i8* %106 to %struct.hash_entry**
  store %struct.hash_entry* null, %struct.hash_entry** %107, align 8
  br label %110

; <label>:108:                                    ; preds = %81
  br label %109

; <label>:109:                                    ; preds = %108, %84, %46, %53, %33, %29, %25, %19, %86, %90
  tail call void @free(i8* nonnull %10) #11
  br label %110

; <label>:110:                                    ; preds = %5, %109, %94
  %111 = phi %struct.hash_table* [ null, %109 ], [ %11, %94 ], [ null, %5 ]
  ret %struct.hash_table* %111
}

; Function Attrs: nounwind readnone sspstrong uwtable
define internal i64 @raw_hasher(i8*, i64) #10 {
  %3 = ptrtoint i8* %0 to i64
  %4 = lshr i64 %3, 3
  %5 = shl i64 %3, 61
  %6 = or i64 %5, %4
  %7 = urem i64 %6, %1
  ret i64 %7
}

; Function Attrs: nounwind readnone sspstrong uwtable
define internal zeroext i1 @raw_comparator(i8* readnone, i8* readnone) #10 {
  %3 = icmp eq i8* %0, %1
  ret i1 %3
}

; Function Attrs: nounwind sspstrong uwtable
define void @hash_clear(%struct.hash_table* nocapture) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %3 = load %struct.hash_entry*, %struct.hash_entry** %2, align 8
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %6 = icmp ult %struct.hash_entry* %3, %5
  br i1 %6, label %7, label %54

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 8
  %9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %10 = bitcast %struct.hash_entry** %9 to i64*
  br label %11

; <label>:11:                                     ; preds = %7, %49
  %12 = phi %struct.hash_entry* [ %5, %7 ], [ %50, %49 ]
  %13 = phi %struct.hash_entry* [ %3, %7 ], [ %51, %49 ]
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %49, label %17

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 0, i32 1
  %19 = load %struct.hash_entry*, %struct.hash_entry** %18, align 8
  %20 = icmp eq %struct.hash_entry* %19, null
  %21 = load void (i8*)*, void (i8*)** %8, align 8
  %22 = icmp ne void (i8*)* %21, null
  br i1 %20, label %41, label %23

; <label>:23:                                     ; preds = %17
  br label %24

; <label>:24:                                     ; preds = %23, %32
  %25 = phi i1 [ %39, %32 ], [ %22, %23 ]
  %26 = phi void (i8*)* [ %33, %32 ], [ %21, %23 ]
  %27 = phi %struct.hash_entry* [ %35, %32 ], [ %19, %23 ]
  %28 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %27, i64 0, i32 0
  br i1 %25, label %29, label %32

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %28, align 8
  tail call void %26(i8* %30) #11
  %31 = load void (i8*)*, void (i8*)** %8, align 8
  br label %32

; <label>:32:                                     ; preds = %24, %29
  %33 = phi void (i8*)* [ %31, %29 ], [ %26, %24 ]
  store i8* null, i8** %28, align 8
  %34 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %27, i64 0, i32 1
  %35 = load %struct.hash_entry*, %struct.hash_entry** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = bitcast %struct.hash_entry** %34 to i64*
  store i64 %36, i64* %37, align 8
  store %struct.hash_entry* %27, %struct.hash_entry** %9, align 8
  %38 = icmp eq %struct.hash_entry* %35, null
  %39 = icmp ne void (i8*)* %33, null
  br i1 %38, label %40, label %24

; <label>:40:                                     ; preds = %32
  br label %41

; <label>:41:                                     ; preds = %40, %17
  %42 = phi void (i8*)* [ %21, %17 ], [ %33, %40 ]
  %43 = phi i1 [ %22, %17 ], [ %39, %40 ]
  br i1 %43, label %44, label %46

; <label>:44:                                     ; preds = %41
  %45 = load i8*, i8** %14, align 8
  tail call void %42(i8* %45) #11
  br label %46

; <label>:46:                                     ; preds = %44, %41
  %47 = bitcast %struct.hash_entry* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* %47, i8 0, i64 16, i32 8, i1 false)
  %48 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  br label %49

; <label>:49:                                     ; preds = %11, %46
  %50 = phi %struct.hash_entry* [ %12, %11 ], [ %48, %46 ]
  %51 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 1
  %52 = icmp ult %struct.hash_entry* %51, %50
  br i1 %52, label %11, label %53

; <label>:53:                                     ; preds = %49
  br label %54

; <label>:54:                                     ; preds = %53, %1
  %55 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %56 = bitcast i64* %55 to i8*
  call void @llvm.memset.p0i8.i64(i8* %56, i8 0, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @hash_free(%struct.hash_table* nocapture) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 8
  %3 = load void (i8*)*, void (i8*)** %2, align 8
  %4 = icmp eq void (i8*)* %3, null
  br i1 %4, label %46, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %46, label %9

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %11 = load %struct.hash_entry*, %struct.hash_entry** %10, align 8
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  %14 = icmp ult %struct.hash_entry* %11, %13
  br i1 %14, label %15, label %46

; <label>:15:                                     ; preds = %9
  br label %16

; <label>:16:                                     ; preds = %15, %41
  %17 = phi %struct.hash_entry* [ %42, %41 ], [ %13, %15 ]
  %18 = phi %struct.hash_entry* [ %43, %41 ], [ %11, %15 ]
  %19 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp eq i8* %20, null
  %22 = icmp eq %struct.hash_entry* %18, null
  %23 = or i1 %21, %22
  br i1 %23, label %41, label %24

; <label>:24:                                     ; preds = %16
  %25 = load void (i8*)*, void (i8*)** %2, align 8
  tail call void %25(i8* %20) #11
  %26 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 0, i32 1
  %27 = load %struct.hash_entry*, %struct.hash_entry** %26, align 8
  %28 = icmp eq %struct.hash_entry* %27, null
  br i1 %28, label %39, label %29

; <label>:29:                                     ; preds = %24
  br label %30

; <label>:30:                                     ; preds = %29, %30
  %31 = phi %struct.hash_entry* [ %36, %30 ], [ %27, %29 ]
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %31, i64 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load void (i8*)*, void (i8*)** %2, align 8
  tail call void %34(i8* %33) #11
  %35 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %31, i64 0, i32 1
  %36 = load %struct.hash_entry*, %struct.hash_entry** %35, align 8
  %37 = icmp eq %struct.hash_entry* %36, null
  br i1 %37, label %38, label %30

; <label>:38:                                     ; preds = %30
  br label %39

; <label>:39:                                     ; preds = %38, %24
  %40 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  br label %41

; <label>:41:                                     ; preds = %39, %16
  %42 = phi %struct.hash_entry* [ %40, %39 ], [ %17, %16 ]
  %43 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 1
  %44 = icmp ult %struct.hash_entry* %43, %42
  br i1 %44, label %16, label %45

; <label>:45:                                     ; preds = %41
  br label %46

; <label>:46:                                     ; preds = %45, %9, %5, %1
  %47 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %48 = load %struct.hash_entry*, %struct.hash_entry** %47, align 8
  %49 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %50 = load %struct.hash_entry*, %struct.hash_entry** %49, align 8
  %51 = icmp ult %struct.hash_entry* %48, %50
  br i1 %51, label %52, label %73

; <label>:52:                                     ; preds = %46
  br label %53

; <label>:53:                                     ; preds = %52, %68
  %54 = phi %struct.hash_entry* [ %69, %68 ], [ %50, %52 ]
  %55 = phi %struct.hash_entry* [ %70, %68 ], [ %48, %52 ]
  %56 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %55, i64 0, i32 1
  %57 = load %struct.hash_entry*, %struct.hash_entry** %56, align 8
  %58 = icmp eq %struct.hash_entry* %57, null
  br i1 %58, label %68, label %59

; <label>:59:                                     ; preds = %53
  br label %60

; <label>:60:                                     ; preds = %59, %60
  %61 = phi %struct.hash_entry* [ %64, %60 ], [ %57, %59 ]
  %62 = bitcast %struct.hash_entry* %61 to i8*
  %63 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %61, i64 0, i32 1
  %64 = load %struct.hash_entry*, %struct.hash_entry** %63, align 8
  tail call void @free(i8* %62) #11
  %65 = icmp eq %struct.hash_entry* %64, null
  br i1 %65, label %66, label %60

; <label>:66:                                     ; preds = %60
  %67 = load %struct.hash_entry*, %struct.hash_entry** %49, align 8
  br label %68

; <label>:68:                                     ; preds = %66, %53
  %69 = phi %struct.hash_entry* [ %67, %66 ], [ %54, %53 ]
  %70 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %55, i64 1
  %71 = icmp ult %struct.hash_entry* %70, %69
  br i1 %71, label %53, label %72

; <label>:72:                                     ; preds = %68
  br label %73

; <label>:73:                                     ; preds = %72, %46
  %74 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %75 = load %struct.hash_entry*, %struct.hash_entry** %74, align 8
  %76 = icmp eq %struct.hash_entry* %75, null
  br i1 %76, label %85, label %77

; <label>:77:                                     ; preds = %73
  br label %78

; <label>:78:                                     ; preds = %77, %78
  %79 = phi %struct.hash_entry* [ %82, %78 ], [ %75, %77 ]
  %80 = bitcast %struct.hash_entry* %79 to i8*
  %81 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %79, i64 0, i32 1
  %82 = load %struct.hash_entry*, %struct.hash_entry** %81, align 8
  tail call void @free(i8* %80) #11
  %83 = icmp eq %struct.hash_entry* %82, null
  br i1 %83, label %84, label %78

; <label>:84:                                     ; preds = %78
  br label %85

; <label>:85:                                     ; preds = %84, %73
  %86 = bitcast %struct.hash_table* %0 to i8**
  %87 = load i8*, i8** %86, align 8
  tail call void @free(i8* %87) #11
  %88 = bitcast %struct.hash_table* %0 to i8*
  tail call void @free(i8* %88) #11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hash_rehash(%struct.hash_table* nocapture, i64) local_unnamed_addr #6 {
  %3 = alloca %struct.hash_table, align 16
  %4 = bitcast %struct.hash_table* %3 to i8*
  call void @llvm.lifetime.start(i64 80, i8* nonnull %4) #11
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 5
  %6 = load %struct.hash_tuning*, %struct.hash_tuning** %5, align 8
  %7 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %6, i64 0, i32 4
  %8 = load i8, i8* %7, align 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %17

; <label>:10:                                     ; preds = %2
  %11 = uitofp i64 %1 to float
  %12 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %6, i64 0, i32 2
  %13 = load float, float* %12, align 4
  %14 = fdiv float %11, %13
  %15 = fcmp ult float %14, 0x43F0000000000000
  %16 = fptoui float %14 to i64
  br i1 %15, label %17, label %152

; <label>:17:                                     ; preds = %10, %2
  %18 = phi i64 [ %1, %2 ], [ %16, %10 ]
  %19 = icmp ugt i64 %18, 10
  %20 = select i1 %19, i64 %18, i64 10
  %21 = or i64 %20, 1
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %152, label %23

; <label>:23:                                     ; preds = %17
  br label %24

; <label>:24:                                     ; preds = %23, %45
  %25 = phi i64 [ %46, %45 ], [ %21, %23 ]
  %26 = icmp ugt i64 %25, 9
  br i1 %26, label %27, label %41

; <label>:27:                                     ; preds = %24
  br label %28

; <label>:28:                                     ; preds = %27, %33
  %29 = phi i64 [ %36, %33 ], [ 9, %27 ]
  %30 = phi i64 [ %37, %33 ], [ 3, %27 ]
  %31 = urem i64 %25, %30
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %39, label %33

; <label>:33:                                     ; preds = %28
  %34 = shl i64 %30, 2
  %35 = add i64 %29, 4
  %36 = add i64 %35, %34
  %37 = add i64 %30, 2
  %38 = icmp ult i64 %36, %25
  br i1 %38, label %28, label %39

; <label>:39:                                     ; preds = %28, %33
  %40 = phi i64 [ %37, %33 ], [ %30, %28 ]
  br label %41

; <label>:41:                                     ; preds = %39, %24
  %42 = phi i64 [ 3, %24 ], [ %40, %39 ]
  %43 = urem i64 %25, %42
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

; <label>:45:                                     ; preds = %41
  %46 = add i64 %25, 2
  %47 = icmp eq i64 %46, -1
  br i1 %47, label %151, label %24

; <label>:48:                                     ; preds = %41
  %49 = add i64 %25, -1
  %50 = icmp ugt i64 %49, 1152921504606846974
  br i1 %50, label %152, label %51

; <label>:51:                                     ; preds = %48
  %52 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %25, %53
  br i1 %54, label %152, label %55

; <label>:55:                                     ; preds = %51
  %56 = tail call i8* @rpl_calloc(i64 %25, i64 16) #11
  %57 = bitcast %struct.hash_table* %3 to i8**
  store i8* %56, i8** %57, align 16
  %58 = icmp eq i8* %56, null
  br i1 %58, label %152, label %59

; <label>:59:                                     ; preds = %55
  %60 = bitcast i8* %56 to %struct.hash_entry*
  %61 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 2
  store i64 %25, i64* %61, align 16
  %62 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %60, i64 %25
  %63 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 1
  store %struct.hash_entry* %62, %struct.hash_entry** %63, align 8
  %64 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 3
  %65 = bitcast i64* %64 to i8*
  call void @llvm.memset.p0i8.i64(i8* %65, i8 0, i64 16, i32 8, i1 false)
  %66 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 5
  %67 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %68 = bitcast %struct.hash_tuning** %5 to <2 x i64>*
  %69 = load <2 x i64>, <2 x i64>* %68, align 8
  %70 = bitcast %struct.hash_tuning** %66 to <2 x i64>*
  store <2 x i64> %69, <2 x i64>* %70, align 8
  %71 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  %72 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 7
  %73 = bitcast i1 (i8*, i8*)** %71 to <2 x i64>*
  %74 = load <2 x i64>, <2 x i64>* %73, align 8
  %75 = bitcast i1 (i8*, i8*)** %72 to <2 x i64>*
  store <2 x i64> %74, <2 x i64>* %75, align 8
  %76 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %77 = bitcast %struct.hash_entry** %76 to i64*
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 9
  %80 = bitcast %struct.hash_entry** %79 to i64*
  store i64 %78, i64* %80, align 8
  %81 = call fastcc zeroext i1 @transfer_entries(%struct.hash_table* nonnull %3, %struct.hash_table* nonnull %0, i1 zeroext false)
  br i1 %81, label %82, label %92

; <label>:82:                                     ; preds = %59
  %83 = bitcast %struct.hash_table* %0 to i8**
  %84 = load i8*, i8** %83, align 8
  tail call void @free(i8* %84) #11
  %85 = bitcast %struct.hash_table* %3 to <2 x i64>*
  %86 = load <2 x i64>, <2 x i64>* %85, align 16
  %87 = bitcast %struct.hash_table* %0 to <2 x i64>*
  store <2 x i64> %86, <2 x i64>* %87, align 8
  %88 = bitcast i64* %61 to <2 x i64>*
  %89 = load <2 x i64>, <2 x i64>* %88, align 16
  %90 = bitcast i64* %52 to <2 x i64>*
  store <2 x i64> %89, <2 x i64>* %90, align 8
  %91 = load i64, i64* %80, align 8
  store i64 %91, i64* %77, align 8
  br label %152

; <label>:92:                                     ; preds = %59
  %93 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 0
  %94 = load i64, i64* %80, align 8
  store i64 %94, i64* %77, align 8
  %95 = load %struct.hash_entry*, %struct.hash_entry** %93, align 16
  %96 = load %struct.hash_entry*, %struct.hash_entry** %63, align 8
  %97 = icmp ult %struct.hash_entry* %95, %96
  br i1 %97, label %98, label %146

; <label>:98:                                     ; preds = %92
  %99 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %100 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  br label %101

; <label>:101:                                    ; preds = %142, %98
  %102 = phi %struct.hash_entry* [ %95, %98 ], [ %143, %142 ]
  %103 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %102, i64 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = icmp eq i8* %104, null
  br i1 %105, label %142, label %106

; <label>:106:                                    ; preds = %101
  %107 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %102, i64 0, i32 1
  %108 = load %struct.hash_entry*, %struct.hash_entry** %107, align 8
  %109 = icmp eq %struct.hash_entry* %108, null
  br i1 %109, label %141, label %110

; <label>:110:                                    ; preds = %106
  %111 = load i64, i64* %52, align 8
  br label %112

; <label>:112:                                    ; preds = %131, %110
  %113 = phi i64 [ %119, %131 ], [ %111, %110 ]
  %114 = phi %struct.hash_entry* [ %125, %131 ], [ %108, %110 ]
  %115 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %114, i64 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load i64 (i8*, i64)*, i64 (i8*, i64)** %67, align 8
  %118 = tail call i64 %117(i8* %116, i64 %113) #11
  %119 = load i64, i64* %52, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %122, label %121

; <label>:121:                                    ; preds = %112
  tail call void @abort() #15
  unreachable

; <label>:122:                                    ; preds = %112
  %123 = load %struct.hash_entry*, %struct.hash_entry** %99, align 8
  %124 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %114, i64 0, i32 1
  %125 = load %struct.hash_entry*, %struct.hash_entry** %124, align 8
  %126 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %123, i64 %118, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = icmp eq i8* %127, null
  br i1 %128, label %137, label %129

; <label>:129:                                    ; preds = %122
  %130 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %123, i64 %118, i32 1
  br label %131

; <label>:131:                                    ; preds = %137, %129
  %132 = phi %struct.hash_entry** [ %130, %129 ], [ %76, %137 ]
  %133 = bitcast %struct.hash_entry** %132 to i64*
  %134 = load i64, i64* %133, align 8
  %135 = bitcast %struct.hash_entry** %124 to i64*
  store i64 %134, i64* %135, align 8
  store %struct.hash_entry* %114, %struct.hash_entry** %132, align 8
  %136 = icmp eq %struct.hash_entry* %125, null
  br i1 %136, label %140, label %112

; <label>:137:                                    ; preds = %122
  store i8* %116, i8** %126, align 8
  %138 = load i64, i64* %100, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %100, align 8
  store i8* null, i8** %115, align 8
  br label %131

; <label>:140:                                    ; preds = %131
  br label %141

; <label>:141:                                    ; preds = %140, %106
  store %struct.hash_entry* null, %struct.hash_entry** %107, align 8
  br label %142

; <label>:142:                                    ; preds = %141, %101
  %143 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %102, i64 1
  %144 = icmp ult %struct.hash_entry* %143, %96
  br i1 %144, label %101, label %145

; <label>:145:                                    ; preds = %142
  br label %146

; <label>:146:                                    ; preds = %145, %92
  %147 = call fastcc zeroext i1 @transfer_entries(%struct.hash_table* %0, %struct.hash_table* nonnull %3, i1 zeroext false)
  br i1 %147, label %149, label %148

; <label>:148:                                    ; preds = %146
  tail call void @abort() #15
  unreachable

; <label>:149:                                    ; preds = %146
  %150 = load i8*, i8** %57, align 16
  tail call void @free(i8* %150) #11
  br label %152

; <label>:151:                                    ; preds = %45
  br label %152

; <label>:152:                                    ; preds = %151, %17, %48, %10, %55, %51, %149, %82
  %153 = phi i1 [ true, %82 ], [ false, %149 ], [ true, %51 ], [ false, %55 ], [ false, %10 ], [ false, %48 ], [ false, %17 ], [ false, %151 ]
  call void @llvm.lifetime.end(i64 80, i8* nonnull %4) #11
  ret i1 %153
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @transfer_entries(%struct.hash_table* nocapture, %struct.hash_table* nocapture, i1 zeroext) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i64 0, i32 0
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i64 0, i32 1
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %8 = icmp ult %struct.hash_entry* %5, %7
  br i1 %8, label %9, label %103

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %11 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %13 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %14 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i64 0, i32 3
  %15 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %16 = bitcast %struct.hash_entry** %15 to i64*
  br label %17

; <label>:17:                                     ; preds = %9, %97
  %18 = phi %struct.hash_entry* [ %5, %9 ], [ %98, %97 ]
  %19 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %97, label %22

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 0, i32 1
  %24 = load %struct.hash_entry*, %struct.hash_entry** %23, align 8
  %25 = icmp eq %struct.hash_entry* %24, null
  br i1 %25, label %58, label %26

; <label>:26:                                     ; preds = %22
  %27 = load i64, i64* %11, align 8
  br label %28

; <label>:28:                                     ; preds = %26, %47
  %29 = phi i64 [ %35, %47 ], [ %27, %26 ]
  %30 = phi %struct.hash_entry* [ %41, %47 ], [ %24, %26 ]
  %31 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %30, i64 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i64 (i8*, i64)*, i64 (i8*, i64)** %10, align 8
  %34 = tail call i64 %33(i8* %32, i64 %29) #11
  %35 = load i64, i64* %11, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %38, label %37

; <label>:37:                                     ; preds = %28
  tail call void @abort() #15
  unreachable

; <label>:38:                                     ; preds = %28
  %39 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  %40 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %30, i64 0, i32 1
  %41 = load %struct.hash_entry*, %struct.hash_entry** %40, align 8
  %42 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %39, i64 %34, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %53, label %45

; <label>:45:                                     ; preds = %38
  %46 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %39, i64 %34, i32 1
  br label %47

; <label>:47:                                     ; preds = %45, %53
  %48 = phi %struct.hash_entry** [ %46, %45 ], [ %15, %53 ]
  %49 = bitcast %struct.hash_entry** %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = bitcast %struct.hash_entry** %40 to i64*
  store i64 %50, i64* %51, align 8
  store %struct.hash_entry* %30, %struct.hash_entry** %48, align 8
  %52 = icmp eq %struct.hash_entry* %41, null
  br i1 %52, label %56, label %28

; <label>:53:                                     ; preds = %38
  store i8* %32, i8** %42, align 8
  %54 = load i64, i64* %13, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %13, align 8
  store i8* null, i8** %31, align 8
  br label %47

; <label>:56:                                     ; preds = %47
  %57 = load i8*, i8** %19, align 8
  br label %58

; <label>:58:                                     ; preds = %56, %22
  %59 = phi i8* [ %57, %56 ], [ %20, %22 ]
  store %struct.hash_entry* null, %struct.hash_entry** %23, align 8
  br i1 %2, label %97, label %60

; <label>:60:                                     ; preds = %58
  %61 = load i64 (i8*, i64)*, i64 (i8*, i64)** %10, align 8
  %62 = load i64, i64* %11, align 8
  %63 = tail call i64 %61(i8* %59, i64 %62) #11
  %64 = load i64, i64* %11, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %67, label %66

; <label>:66:                                     ; preds = %60
  tail call void @abort() #15
  unreachable

; <label>:67:                                     ; preds = %60
  %68 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  %69 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %68, i64 %63, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %91, label %72

; <label>:72:                                     ; preds = %67
  %73 = load %struct.hash_entry*, %struct.hash_entry** %15, align 8
  %74 = icmp eq %struct.hash_entry* %73, null
  br i1 %74, label %79, label %75

; <label>:75:                                     ; preds = %72
  %76 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %73, i64 0, i32 1
  %77 = bitcast %struct.hash_entry** %76 to i64*
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %16, align 8
  br label %83

; <label>:79:                                     ; preds = %72
  %80 = tail call noalias i8* @malloc(i64 16) #11
  %81 = bitcast i8* %80 to %struct.hash_entry*
  %82 = icmp eq i8* %80, null
  br i1 %82, label %101, label %83

; <label>:83:                                     ; preds = %79, %75
  %84 = phi %struct.hash_entry* [ %73, %75 ], [ %81, %79 ]
  %85 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %84, i64 0, i32 0
  store i8* %59, i8** %85, align 8
  %86 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %68, i64 %63, i32 1
  %87 = bitcast %struct.hash_entry** %86 to i64*
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %84, i64 0, i32 1
  %90 = bitcast %struct.hash_entry** %89 to i64*
  store i64 %88, i64* %90, align 8
  store %struct.hash_entry* %84, %struct.hash_entry** %86, align 8
  br label %94

; <label>:91:                                     ; preds = %67
  store i8* %59, i8** %69, align 8
  %92 = load i64, i64* %13, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %13, align 8
  br label %94

; <label>:94:                                     ; preds = %83, %91
  store i8* null, i8** %19, align 8
  %95 = load i64, i64* %14, align 8
  %96 = add i64 %95, -1
  store i64 %96, i64* %14, align 8
  br label %97

; <label>:97:                                     ; preds = %58, %94, %17
  %98 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 1
  %99 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8
  %100 = icmp ult %struct.hash_entry* %98, %99
  br i1 %100, label %17, label %101

; <label>:101:                                    ; preds = %79, %97
  %102 = phi i1 [ false, %79 ], [ true, %97 ]
  br label %103

; <label>:103:                                    ; preds = %101, %3
  %104 = phi i1 [ true, %3 ], [ %102, %101 ]
  ret i1 %104
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @hash_insert_if_absent(%struct.hash_table* nocapture, i8*, i8**) local_unnamed_addr #6 {
  %4 = icmp eq i8* %1, null
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  tail call void @abort() #15
  unreachable

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %8 = load i64 (i8*, i64)*, i64 (i8*, i64)** %7, align 8
  %9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = tail call i64 %8(i8* nonnull %1, i64 %10) #11
  %12 = load i64, i64* %9, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %6
  tail call void @abort() #15
  unreachable

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %17 = load %struct.hash_entry*, %struct.hash_entry** %16, align 8
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 %11
  %19 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %61, label %22

; <label>:22:                                     ; preds = %15
  %23 = icmp eq i8* %20, %1
  br i1 %23, label %56, label %24

; <label>:24:                                     ; preds = %22
  %25 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  %26 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %25, align 8
  %27 = tail call zeroext i1 %26(i8* nonnull %1, i8* nonnull %20) #11
  br i1 %27, label %49, label %28

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 %11, i32 1
  %30 = load %struct.hash_entry*, %struct.hash_entry** %29, align 8
  %31 = icmp eq %struct.hash_entry* %30, null
  br i1 %31, label %61, label %32

; <label>:32:                                     ; preds = %28
  br label %33

; <label>:33:                                     ; preds = %32, %45
  %34 = phi %struct.hash_entry* [ %47, %45 ], [ %30, %32 ]
  %35 = phi %struct.hash_entry** [ %46, %45 ], [ %29, %32 ]
  %36 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %34, i64 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = icmp eq i8* %37, %1
  br i1 %38, label %52, label %39

; <label>:39:                                     ; preds = %33
  %40 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %25, align 8
  %41 = tail call zeroext i1 %40(i8* nonnull %1, i8* %37) #11
  %42 = load %struct.hash_entry*, %struct.hash_entry** %35, align 8
  br i1 %41, label %43, label %45

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %42, i64 0, i32 0
  br label %49

; <label>:45:                                     ; preds = %39
  %46 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %42, i64 0, i32 1
  %47 = load %struct.hash_entry*, %struct.hash_entry** %46, align 8
  %48 = icmp eq %struct.hash_entry* %47, null
  br i1 %48, label %60, label %33

; <label>:49:                                     ; preds = %24, %43
  %50 = phi i8** [ %44, %43 ], [ %19, %24 ]
  %51 = load i8*, i8** %50, align 8
  br label %53

; <label>:52:                                     ; preds = %33
  br label %53

; <label>:53:                                     ; preds = %52, %49
  %54 = phi i8* [ %51, %49 ], [ %1, %52 ]
  %55 = icmp eq i8* %54, null
  br i1 %55, label %61, label %56

; <label>:56:                                     ; preds = %22, %53
  %57 = phi i8* [ %54, %53 ], [ %1, %22 ]
  %58 = icmp eq i8** %2, null
  br i1 %58, label %198, label %59

; <label>:59:                                     ; preds = %56
  store i8* %57, i8** %2, align 8
  br label %198

; <label>:60:                                     ; preds = %45
  br label %61

; <label>:61:                                     ; preds = %60, %28, %15, %53
  %62 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = uitofp i64 %63 to float
  %65 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 5
  %66 = load %struct.hash_tuning*, %struct.hash_tuning** %65, align 8
  %67 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %66, i64 0, i32 2
  %68 = load float, float* %67, align 4
  %69 = load i64, i64* %9, align 8
  %70 = uitofp i64 %69 to float
  %71 = fmul float %68, %70
  %72 = fcmp ogt float %64, %71
  br i1 %72, label %73, label %164

; <label>:73:                                     ; preds = %61
  %74 = icmp eq %struct.hash_tuning* %66, @default_tuning
  br i1 %74, label %97, label %75

; <label>:75:                                     ; preds = %73
  %76 = fcmp ogt float %68, 0x3FB99999A0000000
  %77 = fcmp olt float %68, 0x3FECCCCCC0000000
  %78 = and i1 %76, %77
  br i1 %78, label %79, label %96

; <label>:79:                                     ; preds = %75
  %80 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %66, i64 0, i32 3
  %81 = load float, float* %80, align 4
  %82 = fcmp ogt float %81, 0x3FF19999A0000000
  br i1 %82, label %83, label %96

; <label>:83:                                     ; preds = %79
  %84 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %66, i64 0, i32 0
  %85 = load float, float* %84, align 4
  %86 = fcmp ult float %85, 0.000000e+00
  br i1 %86, label %96, label %87

; <label>:87:                                     ; preds = %83
  %88 = fadd float %85, 0x3FB99999A0000000
  %89 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %66, i64 0, i32 1
  %90 = load float, float* %89, align 4
  %91 = fcmp olt float %88, %90
  %92 = fcmp ole float %90, 1.000000e+00
  %93 = and i1 %92, %91
  %94 = fcmp olt float %88, %68
  %95 = and i1 %94, %93
  br i1 %95, label %97, label %96

; <label>:96:                                     ; preds = %87, %83, %79, %75
  store %struct.hash_tuning* @default_tuning, %struct.hash_tuning** %65, align 8
  br label %97

; <label>:97:                                     ; preds = %73, %87, %96
  %98 = phi float [ %68, %73 ], [ %68, %87 ], [ 0x3FE99999A0000000, %96 ]
  %99 = phi %struct.hash_tuning* [ @default_tuning, %73 ], [ %66, %87 ], [ @default_tuning, %96 ]
  %100 = fmul float %98, %70
  %101 = fcmp ogt float %64, %100
  br i1 %101, label %102, label %164

; <label>:102:                                    ; preds = %97
  %103 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %99, i64 0, i32 4
  %104 = load i8, i8* %103, align 4
  %105 = icmp eq i8 %104, 0
  %106 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %99, i64 0, i32 3
  %107 = load float, float* %106, align 4
  %108 = fmul float %70, %107
  %109 = fmul float %98, %108
  %110 = select i1 %105, float %109, float %108
  %111 = fcmp ult float %110, 0x43F0000000000000
  br i1 %111, label %112, label %198

; <label>:112:                                    ; preds = %102
  %113 = fptoui float %110 to i64
  %114 = tail call zeroext i1 @hash_rehash(%struct.hash_table* nonnull %0, i64 %113)
  br i1 %114, label %115, label %198

; <label>:115:                                    ; preds = %112
  %116 = load i64 (i8*, i64)*, i64 (i8*, i64)** %7, align 8
  %117 = load i64, i64* %9, align 8
  %118 = tail call i64 %116(i8* nonnull %1, i64 %117) #11
  %119 = load i64, i64* %9, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %122, label %121

; <label>:121:                                    ; preds = %115
  tail call void @abort() #15
  unreachable

; <label>:122:                                    ; preds = %115
  %123 = load %struct.hash_entry*, %struct.hash_entry** %16, align 8
  %124 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %123, i64 %118
  %125 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %124, i64 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = icmp eq i8* %126, null
  br i1 %127, label %164, label %128

; <label>:128:                                    ; preds = %122
  %129 = icmp eq i8* %126, %1
  br i1 %129, label %159, label %130

; <label>:130:                                    ; preds = %128
  %131 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  %132 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %131, align 8
  %133 = tail call zeroext i1 %132(i8* nonnull %1, i8* nonnull %126) #11
  br i1 %133, label %134, label %136

; <label>:134:                                    ; preds = %130
  %135 = load i8*, i8** %125, align 8
  br label %159

; <label>:136:                                    ; preds = %130
  %137 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %123, i64 %118, i32 1
  %138 = load %struct.hash_entry*, %struct.hash_entry** %137, align 8
  %139 = icmp eq %struct.hash_entry* %138, null
  br i1 %139, label %164, label %140

; <label>:140:                                    ; preds = %136
  br label %141

; <label>:141:                                    ; preds = %140, %154
  %142 = phi %struct.hash_entry* [ %156, %154 ], [ %138, %140 ]
  %143 = phi %struct.hash_entry** [ %155, %154 ], [ %137, %140 ]
  %144 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %142, i64 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = icmp eq i8* %145, %1
  br i1 %146, label %158, label %147

; <label>:147:                                    ; preds = %141
  %148 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %131, align 8
  %149 = tail call zeroext i1 %148(i8* nonnull %1, i8* %145) #11
  %150 = load %struct.hash_entry*, %struct.hash_entry** %143, align 8
  br i1 %149, label %151, label %154

; <label>:151:                                    ; preds = %147
  %152 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %150, i64 0, i32 0
  %153 = load i8*, i8** %152, align 8
  br label %159

; <label>:154:                                    ; preds = %147
  %155 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %150, i64 0, i32 1
  %156 = load %struct.hash_entry*, %struct.hash_entry** %155, align 8
  %157 = icmp eq %struct.hash_entry* %156, null
  br i1 %157, label %163, label %141

; <label>:158:                                    ; preds = %141
  br label %159

; <label>:159:                                    ; preds = %158, %151, %128, %134
  %160 = phi i8* [ %135, %134 ], [ %1, %128 ], [ %153, %151 ], [ %1, %158 ]
  %161 = icmp eq i8* %160, null
  br i1 %161, label %164, label %162

; <label>:162:                                    ; preds = %159
  tail call void @abort() #15
  unreachable

; <label>:163:                                    ; preds = %154
  br label %164

; <label>:164:                                    ; preds = %163, %136, %122, %159, %97, %61
  %165 = phi %struct.hash_entry* [ %124, %159 ], [ %18, %97 ], [ %18, %61 ], [ %124, %122 ], [ %124, %136 ], [ %124, %163 ]
  %166 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %165, i64 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = icmp eq i8* %167, null
  br i1 %168, label %193, label %169

; <label>:169:                                    ; preds = %164
  %170 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %171 = load %struct.hash_entry*, %struct.hash_entry** %170, align 8
  %172 = icmp eq %struct.hash_entry* %171, null
  br i1 %172, label %178, label %173

; <label>:173:                                    ; preds = %169
  %174 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %171, i64 0, i32 1
  %175 = bitcast %struct.hash_entry** %174 to i64*
  %176 = load i64, i64* %175, align 8
  %177 = bitcast %struct.hash_entry** %170 to i64*
  store i64 %176, i64* %177, align 8
  br label %182

; <label>:178:                                    ; preds = %169
  %179 = tail call noalias i8* @malloc(i64 16) #11
  %180 = bitcast i8* %179 to %struct.hash_entry*
  %181 = icmp eq i8* %179, null
  br i1 %181, label %198, label %182

; <label>:182:                                    ; preds = %173, %178
  %183 = phi %struct.hash_entry* [ %171, %173 ], [ %180, %178 ]
  %184 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %183, i64 0, i32 0
  store i8* %1, i8** %184, align 8
  %185 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %165, i64 0, i32 1
  %186 = bitcast %struct.hash_entry** %185 to i64*
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %183, i64 0, i32 1
  %189 = bitcast %struct.hash_entry** %188 to i64*
  store i64 %187, i64* %189, align 8
  store %struct.hash_entry* %183, %struct.hash_entry** %185, align 8
  %190 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %190, align 8
  br label %198

; <label>:193:                                    ; preds = %164
  store i8* %1, i8** %166, align 8
  %194 = bitcast i64* %62 to <2 x i64>*
  %195 = load <2 x i64>, <2 x i64>* %194, align 8
  %196 = add <2 x i64> %195, <i64 1, i64 1>
  %197 = bitcast i64* %62 to <2 x i64>*
  store <2 x i64> %196, <2 x i64>* %197, align 8
  br label %198

; <label>:198:                                    ; preds = %112, %102, %182, %178, %59, %56, %193
  %199 = phi i32 [ 1, %193 ], [ 0, %56 ], [ 0, %59 ], [ 1, %182 ], [ -1, %178 ], [ -1, %102 ], [ -1, %112 ]
  ret i32 %199
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @hash_insert(%struct.hash_table* nocapture, i8*) local_unnamed_addr #6 {
  %3 = alloca i8*, align 8
  %4 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %4) #11
  %5 = call i32 @hash_insert_if_absent(%struct.hash_table* %0, i8* %1, i8** nonnull %3)
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %11, label %7

; <label>:7:                                      ; preds = %2
  %8 = icmp eq i32 %5, 0
  %9 = load i8*, i8** %3, align 8
  %10 = select i1 %8, i8* %9, i8* %1
  br label %11

; <label>:11:                                     ; preds = %7, %2
  %12 = phi i8* [ null, %2 ], [ %10, %7 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %4) #11
  ret i8* %12
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @hash_delete(%struct.hash_table* nocapture, i8*) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = tail call i64 %4(i8* %1, i64 %6) #11
  %8 = load i64, i64* %5, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %2
  tail call void @abort() #15
  unreachable

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7
  %15 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i64 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %155, label %18

; <label>:18:                                     ; preds = %11
  %19 = icmp eq i8* %16, %1
  br i1 %19, label %31, label %20

; <label>:20:                                     ; preds = %18
  %21 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  %22 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %21, align 8
  %23 = tail call zeroext i1 %22(i8* %1, i8* nonnull %16) #11
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %20
  %25 = load i8*, i8** %15, align 8
  br label %31

; <label>:26:                                     ; preds = %20
  %27 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, i32 1
  %28 = load %struct.hash_entry*, %struct.hash_entry** %27, align 8
  %29 = icmp eq %struct.hash_entry* %28, null
  br i1 %29, label %155, label %30

; <label>:30:                                     ; preds = %26
  br label %46

; <label>:31:                                     ; preds = %24, %18
  %32 = phi i8* [ %25, %24 ], [ %1, %18 ]
  %33 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, i32 1
  %34 = load %struct.hash_entry*, %struct.hash_entry** %33, align 8
  %35 = icmp eq %struct.hash_entry* %34, null
  br i1 %35, label %45, label %36

; <label>:36:                                     ; preds = %31
  %37 = bitcast %struct.hash_entry* %14 to i8*
  %38 = bitcast %struct.hash_entry* %34 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 16, i32 8, i1 false) #11
  %39 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %34, i64 0, i32 0
  store i8* null, i8** %39, align 8
  %40 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %41 = bitcast %struct.hash_entry** %40 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %34, i64 0, i32 1
  %44 = bitcast %struct.hash_entry** %43 to i64*
  store i64 %42, i64* %44, align 8
  store %struct.hash_entry* %34, %struct.hash_entry** %40, align 8
  br label %75

; <label>:45:                                     ; preds = %31
  store i8* null, i8** %15, align 8
  br label %75

; <label>:46:                                     ; preds = %30, %71
  %47 = phi %struct.hash_entry* [ %73, %71 ], [ %28, %30 ]
  %48 = phi %struct.hash_entry** [ %72, %71 ], [ %27, %30 ]
  %49 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %47, i64 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp eq i8* %50, %1
  br i1 %51, label %59, label %52

; <label>:52:                                     ; preds = %46
  %53 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %21, align 8
  %54 = tail call zeroext i1 %53(i8* %1, i8* %50) #11
  %55 = load %struct.hash_entry*, %struct.hash_entry** %48, align 8
  br i1 %54, label %56, label %71

; <label>:56:                                     ; preds = %52
  %57 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %55, i64 0, i32 0
  %58 = load i8*, i8** %57, align 8
  br label %60

; <label>:59:                                     ; preds = %46
  br label %60

; <label>:60:                                     ; preds = %59, %56
  %61 = phi i8* [ %58, %56 ], [ %1, %59 ]
  %62 = phi %struct.hash_entry* [ %55, %56 ], [ %47, %59 ]
  %63 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %62, i64 0, i32 0
  %64 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %62, i64 0, i32 1
  %65 = bitcast %struct.hash_entry** %64 to i64*
  %66 = load i64, i64* %65, align 8
  %67 = bitcast %struct.hash_entry** %48 to i64*
  store i64 %66, i64* %67, align 8
  store i8* null, i8** %63, align 8
  %68 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %69 = bitcast %struct.hash_entry** %68 to i64*
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %65, align 8
  store %struct.hash_entry* %62, %struct.hash_entry** %68, align 8
  br label %75

; <label>:71:                                     ; preds = %52
  %72 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %55, i64 0, i32 1
  %73 = load %struct.hash_entry*, %struct.hash_entry** %72, align 8
  %74 = icmp eq %struct.hash_entry* %73, null
  br i1 %74, label %154, label %46

; <label>:75:                                     ; preds = %36, %45, %60
  %76 = phi i8* [ %32, %36 ], [ %32, %45 ], [ %61, %60 ]
  %77 = icmp eq i8* %76, null
  br i1 %77, label %155, label %78

; <label>:78:                                     ; preds = %75
  %79 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, -1
  store i64 %81, i64* %79, align 8
  %82 = load i8*, i8** %15, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %155

; <label>:84:                                     ; preds = %78
  %85 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, -1
  store i64 %87, i64* %85, align 8
  %88 = uitofp i64 %87 to float
  %89 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 5
  %90 = load %struct.hash_tuning*, %struct.hash_tuning** %89, align 8
  %91 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %90, i64 0, i32 0
  %92 = load float, float* %91, align 4
  %93 = load i64, i64* %5, align 8
  %94 = uitofp i64 %93 to float
  %95 = fmul float %92, %94
  %96 = fcmp olt float %88, %95
  br i1 %96, label %97, label %155

; <label>:97:                                     ; preds = %84
  %98 = icmp eq %struct.hash_tuning* %90, @default_tuning
  br i1 %98, label %121, label %99

; <label>:99:                                     ; preds = %97
  %100 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %90, i64 0, i32 2
  %101 = load float, float* %100, align 4
  %102 = fcmp ogt float %101, 0x3FB99999A0000000
  %103 = fcmp olt float %101, 0x3FECCCCCC0000000
  %104 = and i1 %102, %103
  br i1 %104, label %105, label %120

; <label>:105:                                    ; preds = %99
  %106 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %90, i64 0, i32 3
  %107 = load float, float* %106, align 4
  %108 = fcmp ule float %107, 0x3FF19999A0000000
  %109 = fcmp ult float %92, 0.000000e+00
  %110 = or i1 %109, %108
  br i1 %110, label %120, label %111

; <label>:111:                                    ; preds = %105
  %112 = fadd float %92, 0x3FB99999A0000000
  %113 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %90, i64 0, i32 1
  %114 = load float, float* %113, align 4
  %115 = fcmp olt float %112, %114
  %116 = fcmp ole float %114, 1.000000e+00
  %117 = and i1 %116, %115
  %118 = fcmp olt float %112, %101
  %119 = and i1 %118, %117
  br i1 %119, label %121, label %120

; <label>:120:                                    ; preds = %105, %111, %99
  store %struct.hash_tuning* @default_tuning, %struct.hash_tuning** %89, align 8
  br label %121

; <label>:121:                                    ; preds = %97, %111, %120
  %122 = phi float [ %92, %97 ], [ %92, %111 ], [ 0.000000e+00, %120 ]
  %123 = phi %struct.hash_tuning* [ @default_tuning, %97 ], [ %90, %111 ], [ @default_tuning, %120 ]
  %124 = fmul float %122, %94
  %125 = fcmp olt float %88, %124
  br i1 %125, label %126, label %155

; <label>:126:                                    ; preds = %121
  %127 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %123, i64 0, i32 4
  %128 = load i8, i8* %127, align 4
  %129 = icmp eq i8 %128, 0
  %130 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %123, i64 0, i32 1
  %131 = load float, float* %130, align 4
  %132 = fmul float %94, %131
  br i1 %129, label %133, label %137

; <label>:133:                                    ; preds = %126
  %134 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %123, i64 0, i32 2
  %135 = load float, float* %134, align 4
  %136 = fmul float %132, %135
  br label %137

; <label>:137:                                    ; preds = %126, %133
  %138 = phi float [ %136, %133 ], [ %132, %126 ]
  %139 = fptoui float %138 to i64
  %140 = tail call zeroext i1 @hash_rehash(%struct.hash_table* nonnull %0, i64 %139)
  br i1 %140, label %155, label %141

; <label>:141:                                    ; preds = %137
  %142 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %143 = load %struct.hash_entry*, %struct.hash_entry** %142, align 8
  %144 = icmp eq %struct.hash_entry* %143, null
  br i1 %144, label %153, label %145

; <label>:145:                                    ; preds = %141
  br label %146

; <label>:146:                                    ; preds = %145, %146
  %147 = phi %struct.hash_entry* [ %150, %146 ], [ %143, %145 ]
  %148 = bitcast %struct.hash_entry* %147 to i8*
  %149 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %147, i64 0, i32 1
  %150 = load %struct.hash_entry*, %struct.hash_entry** %149, align 8
  tail call void @free(i8* %148) #11
  %151 = icmp eq %struct.hash_entry* %150, null
  br i1 %151, label %152, label %146

; <label>:152:                                    ; preds = %146
  br label %153

; <label>:153:                                    ; preds = %152, %141
  store %struct.hash_entry* null, %struct.hash_entry** %142, align 8
  br label %155

; <label>:154:                                    ; preds = %71
  br label %155

; <label>:155:                                    ; preds = %154, %26, %11, %121, %84, %78, %153, %137, %75
  %156 = phi i8* [ null, %75 ], [ %76, %137 ], [ %76, %153 ], [ %76, %78 ], [ %76, %84 ], [ %76, %121 ], [ null, %11 ], [ null, %26 ], [ null, %154 ]
  ret i8* %156
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @triple_hash(i8* nocapture readonly, i64) #12 {
  %3 = bitcast i8* %0 to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = tail call i64 @hash_pjw(i8* %4, i64 %1) #14
  %6 = getelementptr inbounds i8, i8* %0, i64 8
  %7 = bitcast i8* %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = xor i64 %8, %5
  %10 = urem i64 %9, %1
  ret i64 %10
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @triple_hash_no_name(i8* nocapture readonly, i64) #12 {
  %3 = getelementptr inbounds i8, i8* %0, i64 8
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = urem i64 %5, %1
  ret i64 %6
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @triple_compare(i8* nocapture readonly, i8* nocapture readonly) #6 {
  %3 = getelementptr inbounds i8, i8* %0, i64 8
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %10, label %24

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds i8, i8* %0, i64 16
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i8, i8* %1, i64 16
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %24

; <label>:18:                                     ; preds = %10
  %19 = bitcast i8* %0 to i8**
  %20 = load i8*, i8** %19, align 8
  %21 = bitcast i8* %1 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = tail call zeroext i1 @same_name(i8* %20, i8* %22) #11
  br label %24

; <label>:24:                                     ; preds = %18, %10, %2
  %25 = phi i1 [ false, %10 ], [ false, %2 ], [ %23, %18 ]
  ret i1 %25
}

; Function Attrs: nounwind readonly sspstrong uwtable
define zeroext i1 @triple_compare_ino_str(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #12 {
  %3 = getelementptr inbounds i8, i8* %0, i64 8
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %10, label %25

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds i8, i8* %0, i64 16
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i8, i8* %1, i64 16
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %25

; <label>:18:                                     ; preds = %10
  %19 = bitcast i8* %0 to i8**
  %20 = load i8*, i8** %19, align 8
  %21 = bitcast i8* %1 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = tail call i32 @strcmp(i8* %20, i8* %22) #11
  %24 = icmp eq i32 %23, 0
  br label %25

; <label>:25:                                     ; preds = %18, %10, %2
  %26 = phi i1 [ false, %10 ], [ false, %2 ], [ %24, %18 ]
  ret i1 %26
}

; Function Attrs: nounwind sspstrong uwtable
define void @triple_free(i8* nocapture) #6 {
  %2 = bitcast i8* %0 to i8**
  %3 = load i8*, i8** %2, align 8
  tail call void @free(i8* %3) #11
  tail call void @free(i8* %0) #11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_program_name(i8*) local_unnamed_addr #6 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.234, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #17
  tail call void @abort() #15
  unreachable

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14
  %8 = icmp ne i8* %7, null
  %9 = getelementptr inbounds i8, i8* %7, i64 1
  %10 = select i1 %8, i8* %9, i8* %0
  %11 = ptrtoint i8* %10 to i64
  %12 = ptrtoint i8* %0 to i64
  %13 = sub i64 %11, %12
  %14 = icmp sgt i64 %13, 6
  br i1 %14, label %15, label %24

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7
  %17 = tail call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.235, i64 0, i64 0), i64 7) #14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.236, i64 0, i64 0), i64 3) #14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3
  store i8* %23, i8** @program_invocation_short_name, align 8
  br label %24

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  store i8* %25, i8** @program_name, align 8
  store i8* %25, i8** @program_invocation_name, align 8
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #11

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i32 @qcopy_acl(i8*, i32, i8*, i32, i32) local_unnamed_addr #6 {
  %6 = alloca %struct.permission_context, align 8
  %7 = bitcast %struct.permission_context* %6 to i8*
  call void @llvm.lifetime.start(i64 32, i8* nonnull %7) #11
  %8 = call i32 @get_permissions(i8* %0, i32 %1, i32 %4, %struct.permission_context* nonnull %6) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %5
  %11 = call i32 @set_permissions(%struct.permission_context* nonnull %6, i8* %2, i32 %3) #11
  call void @free_permission_context(%struct.permission_context* nonnull %6) #11
  br label %12

; <label>:12:                                     ; preds = %5, %10
  %13 = phi i32 [ %11, %10 ], [ -2, %5 ]
  call void @llvm.lifetime.end(i64 32, i8* nonnull %7) #11
  ret i32 %13
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @qset_acl(i8*, i32, i32) local_unnamed_addr #6 {
  %4 = alloca %struct.permission_context, align 8
  %5 = bitcast %struct.permission_context* %4 to i8*
  call void @llvm.lifetime.start(i64 32, i8* nonnull %5) #11
  call void @llvm.memset.p0i8.i64(i8* nonnull %5, i8 0, i64 32, i32 8, i1 false)
  %6 = getelementptr inbounds %struct.permission_context, %struct.permission_context* %4, i64 0, i32 0
  store i32 %2, i32* %6, align 8
  %7 = call i32 @set_permissions(%struct.permission_context* nonnull %4, i8* %0, i32 %1) #11
  call void @free_permission_context(%struct.permission_context* nonnull %4) #11
  call void @llvm.lifetime.end(i64 32, i8* nonnull %5) #11
  ret i32 %7
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #6 {
  %2 = tail call i32* @__errno_location() #1
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne %struct.quoting_options* %0, null
  %5 = bitcast %struct.quoting_options* %0 to i8*
  %6 = select i1 %4, i8* %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*)
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11
  %8 = bitcast i8* %7 to %struct.quoting_options*
  store i32 %3, i32* %2, align 4
  ret %struct.quoting_options* %8
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 {
  %2 = icmp ne %struct.quoting_options* %0, null
  %3 = select i1 %2, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #6 {
  %3 = icmp ne %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %5, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #6 {
  %4 = icmp ne %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* %0, %struct.quoting_options* @default_quoting_options
  %6 = lshr i8 %1, 5
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7
  %9 = and i8 %1, 31
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %8, align 4
  %12 = lshr i32 %11, %10
  %13 = and i32 %12, 1
  %14 = and i32 %2, 1
  %15 = xor i32 %13, %14
  %16 = shl i32 %15, %10
  %17 = xor i32 %16, %11
  store i32 %17, i32* %8, align 4
  ret i32 %13
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #6 {
  %3 = icmp eq %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  store i32 %1, i32* %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind sspstrong uwtable
define void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #6 {
  %4 = icmp eq %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %6, align 8
  %7 = icmp ne i8* %1, null
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %12, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %13, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #6 {
  %6 = icmp ne %struct.quoting_options* %4, null
  %7 = select i1 %6, %struct.quoting_options* %4, %struct.quoting_options* @default_quoting_options
  %8 = tail call i32* @__errno_location() #1
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4
  %18 = load i8*, i8** %17, align 8
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* %14, i8* %16, i8* %18)
  store i32 %9, i32* %8, align 4
  ret i64 %19
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #6 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11
  %14 = icmp eq i64 %13, 1
  %15 = lshr i32 %5, 1
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = bitcast i64* %10 to i8*
  %19 = bitcast i32* %12 to i8*
  %20 = icmp eq i32* %6, null
  %21 = icmp ne i32* %6, null
  %22 = and i32 %5, 1
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 4
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, i8* %2, i64 1
  br label %27

; <label>:27:                                     ; preds = %614, %9
  %28 = phi i32 [ %4, %9 ], [ %96, %614 ]
  %29 = phi i8* [ %7, %9 ], [ %97, %614 ]
  %30 = phi i8* [ %8, %9 ], [ %98, %614 ]
  %31 = phi i64 [ 0, %9 ], [ %126, %614 ]
  %32 = phi i8* [ null, %9 ], [ %100, %614 ]
  %33 = phi i64 [ 0, %9 ], [ %101, %614 ]
  %34 = phi i8 [ 0, %9 ], [ %102, %614 ]
  %35 = phi i64 [ %3, %9 ], [ %598, %614 ]
  %36 = phi i8 [ %17, %9 ], [ %103, %614 ]
  %37 = phi i8 [ 0, %9 ], [ %128, %614 ]
  %38 = phi i8 [ 0, %9 ], [ %129, %614 ]
  %39 = phi i8 [ 1, %9 ], [ %130, %614 ]
  %40 = phi i64 [ %1, %9 ], [ %126, %614 ]
  switch i32 %28, label %94 [
    i32 6, label %41
    i32 5, label %42
    i32 7, label %95
    i32 0, label %93
    i32 2, label %85
    i32 4, label %79
    i32 3, label %76
    i32 1, label %77
    i32 10, label %51
    i32 8, label %48
    i32 9, label %48
  ]

; <label>:41:                                     ; preds = %27
  br label %95

; <label>:42:                                     ; preds = %27
  %43 = and i8 %36, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %95

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0
  br i1 %46, label %95, label %47

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1
  br label %95

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.251, i64 0, i64 0), i32 %28)
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.252, i64 0, i64 0), i32 %28)
  br label %51

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  %54 = and i8 %36, 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %73

; <label>:56:                                     ; preds = %51
  %57 = load i8, i8* %52, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %73, label %59

; <label>:59:                                     ; preds = %56
  br label %60

; <label>:60:                                     ; preds = %59, %67
  %61 = phi i8 [ %70, %67 ], [ %57, %59 ]
  %62 = phi i8* [ %69, %67 ], [ %52, %59 ]
  %63 = phi i64 [ %68, %67 ], [ 0, %59 ]
  %64 = icmp ult i64 %63, %40
  br i1 %64, label %65, label %67

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds i8, i8* %0, i64 %63
  store i8 %61, i8* %66, align 1
  br label %67

; <label>:67:                                     ; preds = %65, %60
  %68 = add i64 %63, 1
  %69 = getelementptr inbounds i8, i8* %62, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %60

; <label>:72:                                     ; preds = %67
  br label %73

; <label>:73:                                     ; preds = %72, %56, %51
  %74 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %68, %72 ]
  %75 = call i64 @strlen(i8* %53) #14
  br label %95

; <label>:76:                                     ; preds = %27
  br label %77

; <label>:77:                                     ; preds = %27, %76
  %78 = phi i8 [ %34, %27 ], [ 1, %76 ]
  br label %79

; <label>:79:                                     ; preds = %27, %77
  %80 = phi i8 [ %34, %27 ], [ %78, %77 ]
  %81 = phi i8 [ %36, %27 ], [ 1, %77 ]
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  %84 = select i1 %83, i8 1, i8 %80
  br label %85

; <label>:85:                                     ; preds = %79, %27
  %86 = phi i8 [ %34, %27 ], [ %84, %79 ]
  %87 = phi i8 [ %36, %27 ], [ %81, %79 ]
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %95

; <label>:90:                                     ; preds = %85
  %91 = icmp eq i64 %40, 0
  br i1 %91, label %95, label %92

; <label>:92:                                     ; preds = %90
  store i8 39, i8* %0, align 1
  br label %95

; <label>:93:                                     ; preds = %27
  br label %95

; <label>:94:                                     ; preds = %27
  call void @abort() #15
  unreachable

; <label>:95:                                     ; preds = %41, %85, %90, %92, %27, %42, %45, %47, %93, %73
  %96 = phi i32 [ 0, %93 ], [ %28, %73 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ 7, %27 ], [ 2, %92 ], [ 2, %90 ], [ 2, %85 ], [ 5, %41 ]
  %97 = phi i8* [ %29, %93 ], [ %52, %73 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %92 ], [ %29, %90 ], [ %29, %85 ], [ %29, %41 ]
  %98 = phi i8* [ %30, %93 ], [ %53, %73 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %92 ], [ %30, %90 ], [ %30, %85 ], [ %30, %41 ]
  %99 = phi i64 [ 0, %93 ], [ %74, %73 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %92 ], [ 1, %90 ], [ 0, %85 ], [ 0, %41 ]
  %100 = phi i8* [ %32, %93 ], [ %53, %73 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.253, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.253, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.253, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.252, i64 0, i64 0), %92 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.252, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.252, i64 0, i64 0), %85 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.253, i64 0, i64 0), %41 ]
  %101 = phi i64 [ %33, %93 ], [ %75, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %92 ], [ 1, %90 ], [ 1, %85 ], [ 1, %41 ]
  %102 = phi i8 [ %34, %93 ], [ 1, %73 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %86, %92 ], [ %86, %90 ], [ %86, %85 ], [ 1, %41 ]
  %103 = phi i8 [ 0, %93 ], [ %36, %73 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %87, %92 ], [ %87, %90 ], [ %87, %85 ], [ 1, %41 ]
  %104 = and i8 %102, 1
  %105 = icmp ne i8 %104, 0
  %106 = icmp ne i32 %96, 2
  %107 = and i1 %106, %105
  %108 = icmp ne i64 %101, 0
  %109 = and i1 %108, %107
  %110 = icmp ugt i64 %101, 1
  %111 = and i8 %103, 1
  %112 = icmp eq i8 %111, 0
  %113 = xor i1 %105, true
  %114 = icmp eq i32 %96, 2
  %115 = icmp ne i8 %111, 0
  %116 = and i1 %114, %115
  %117 = and i1 %21, %115
  %118 = or i1 %106, %112
  %119 = and i8 %102, %103
  %120 = and i8 %119, 1
  %121 = icmp ne i8 %120, 0
  %122 = and i1 %121, %108
  br label %123

; <label>:123:                                    ; preds = %587, %95
  %124 = phi i64 [ 0, %95 ], [ %596, %587 ]
  %125 = phi i64 [ %99, %95 ], [ %589, %587 ]
  %126 = phi i64 [ %31, %95 ], [ %590, %587 ]
  %127 = phi i64 [ %35, %95 ], [ %591, %587 ]
  %128 = phi i8 [ %37, %95 ], [ %592, %587 ]
  %129 = phi i8 [ %38, %95 ], [ %593, %587 ]
  %130 = phi i8 [ %39, %95 ], [ %594, %587 ]
  %131 = phi i64 [ %40, %95 ], [ %595, %587 ]
  %132 = icmp eq i64 %127, -1
  br i1 %132, label %135, label %133

; <label>:133:                                    ; preds = %123
  %134 = icmp eq i64 %124, %127
  br i1 %134, label %597, label %139

; <label>:135:                                    ; preds = %123
  %136 = getelementptr inbounds i8, i8* %2, i64 %124
  %137 = load i8, i8* %136, align 1
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %597, label %139

; <label>:139:                                    ; preds = %133, %135
  br i1 %109, label %140, label %155

; <label>:140:                                    ; preds = %139
  %141 = add i64 %124, %101
  %142 = and i1 %110, %132
  br i1 %142, label %143, label %145

; <label>:143:                                    ; preds = %140
  %144 = call i64 @strlen(i8* %2) #14
  br label %145

; <label>:145:                                    ; preds = %140, %143
  %146 = phi i64 [ %144, %143 ], [ %127, %140 ]
  %147 = icmp ugt i64 %141, %146
  br i1 %147, label %155, label %148

; <label>:148:                                    ; preds = %145
  %149 = getelementptr inbounds i8, i8* %2, i64 %124
  %150 = call i32 @memcmp(i8* %149, i8* %100, i64 %101) #14
  %151 = icmp ne i32 %150, 0
  %152 = or i1 %151, %112
  %153 = xor i1 %151, true
  %154 = zext i1 %153 to i8
  br i1 %152, label %155, label %644

; <label>:155:                                    ; preds = %148, %145, %139
  %156 = phi i64 [ %146, %148 ], [ %146, %145 ], [ %127, %139 ]
  %157 = phi i8 [ %154, %148 ], [ 0, %145 ], [ 0, %139 ]
  %158 = getelementptr inbounds i8, i8* %2, i64 %124
  %159 = load i8, i8* %158, align 1
  switch i8 %159, label %298 [
    i8 0, label %160
    i8 63, label %210
    i8 7, label %257
    i8 8, label %247
    i8 12, label %248
    i8 10, label %255
    i8 13, label %249
    i8 9, label %250
    i8 11, label %251
    i8 92, label %252
    i8 123, label %259
    i8 125, label %259
    i8 35, label %270
    i8 126, label %270
    i8 32, label %272
    i8 33, label %273
    i8 34, label %273
    i8 36, label %273
    i8 38, label %273
    i8 40, label %273
    i8 41, label %273
    i8 42, label %273
    i8 59, label %273
    i8 60, label %273
    i8 61, label %273
    i8 62, label %273
    i8 91, label %273
    i8 94, label %273
    i8 96, label %273
    i8 124, label %273
    i8 39, label %275
    i8 37, label %476
    i8 43, label %476
    i8 44, label %476
    i8 45, label %476
    i8 46, label %476
    i8 47, label %476
    i8 48, label %476
    i8 49, label %476
    i8 50, label %476
    i8 51, label %476
    i8 52, label %476
    i8 53, label %476
    i8 54, label %476
    i8 55, label %476
    i8 56, label %476
    i8 57, label %476
    i8 58, label %476
    i8 65, label %476
    i8 66, label %476
    i8 67, label %476
    i8 68, label %476
    i8 69, label %476
    i8 70, label %476
    i8 71, label %476
    i8 72, label %476
    i8 73, label %476
    i8 74, label %476
    i8 75, label %476
    i8 76, label %476
    i8 77, label %476
    i8 78, label %476
    i8 79, label %476
    i8 80, label %476
    i8 81, label %476
    i8 82, label %476
    i8 83, label %476
    i8 84, label %476
    i8 85, label %476
    i8 86, label %476
    i8 87, label %476
    i8 88, label %476
    i8 89, label %476
    i8 90, label %476
    i8 93, label %476
    i8 95, label %476
    i8 97, label %476
    i8 98, label %476
    i8 99, label %476
    i8 100, label %476
    i8 101, label %476
    i8 102, label %476
    i8 103, label %476
    i8 104, label %476
    i8 105, label %476
    i8 106, label %476
    i8 107, label %476
    i8 108, label %476
    i8 109, label %476
    i8 110, label %476
    i8 111, label %476
    i8 112, label %476
    i8 113, label %476
    i8 114, label %476
    i8 115, label %476
    i8 116, label %476
    i8 117, label %476
    i8 118, label %476
    i8 119, label %476
    i8 120, label %476
    i8 121, label %476
    i8 122, label %476
  ]

; <label>:160:                                    ; preds = %155
  br i1 %105, label %161, label %209

; <label>:161:                                    ; preds = %160
  br i1 %112, label %162, label %644

; <label>:162:                                    ; preds = %161
  %163 = and i8 %128, 1
  %164 = icmp eq i8 %163, 0
  %165 = and i1 %114, %164
  br i1 %165, label %166, label %182

; <label>:166:                                    ; preds = %162
  %167 = icmp ult i64 %125, %131
  br i1 %167, label %168, label %170

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds i8, i8* %0, i64 %125
  store i8 39, i8* %169, align 1
  br label %170

; <label>:170:                                    ; preds = %168, %166
  %171 = add i64 %125, 1
  %172 = icmp ult i64 %171, %131
  br i1 %172, label %173, label %175

; <label>:173:                                    ; preds = %170
  %174 = getelementptr inbounds i8, i8* %0, i64 %171
  store i8 36, i8* %174, align 1
  br label %175

; <label>:175:                                    ; preds = %173, %170
  %176 = add i64 %125, 2
  %177 = icmp ult i64 %176, %131
  br i1 %177, label %178, label %180

; <label>:178:                                    ; preds = %175
  %179 = getelementptr inbounds i8, i8* %0, i64 %176
  store i8 39, i8* %179, align 1
  br label %180

; <label>:180:                                    ; preds = %178, %175
  %181 = add i64 %125, 3
  br label %182

; <label>:182:                                    ; preds = %162, %180
  %183 = phi i64 [ %181, %180 ], [ %125, %162 ]
  %184 = phi i8 [ 1, %180 ], [ %128, %162 ]
  %185 = icmp ult i64 %183, %131
  br i1 %185, label %186, label %188

; <label>:186:                                    ; preds = %182
  %187 = getelementptr inbounds i8, i8* %0, i64 %183
  store i8 92, i8* %187, align 1
  br label %188

; <label>:188:                                    ; preds = %186, %182
  %189 = add i64 %183, 1
  br i1 %106, label %190, label %476

; <label>:190:                                    ; preds = %188
  %191 = add i64 %124, 1
  %192 = icmp ult i64 %191, %156
  br i1 %192, label %193, label %476

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %2, i64 %191
  %195 = load i8, i8* %194, align 1
  %196 = add i8 %195, -48
  %197 = icmp ult i8 %196, 10
  br i1 %197, label %198, label %476

; <label>:198:                                    ; preds = %193
  %199 = icmp ult i64 %189, %131
  br i1 %199, label %200, label %202

; <label>:200:                                    ; preds = %198
  %201 = getelementptr inbounds i8, i8* %0, i64 %189
  store i8 48, i8* %201, align 1
  br label %202

; <label>:202:                                    ; preds = %200, %198
  %203 = add i64 %183, 2
  %204 = icmp ult i64 %203, %131
  br i1 %204, label %205, label %207

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds i8, i8* %0, i64 %203
  store i8 48, i8* %206, align 1
  br label %207

; <label>:207:                                    ; preds = %205, %202
  %208 = add i64 %183, 3
  br label %476

; <label>:209:                                    ; preds = %160
  br i1 %23, label %476, label %587

; <label>:210:                                    ; preds = %155
  switch i32 %96, label %476 [
    i32 2, label %211
    i32 5, label %212
  ]

; <label>:211:                                    ; preds = %210
  br i1 %112, label %476, label %644

; <label>:212:                                    ; preds = %210
  br i1 %25, label %476, label %213

; <label>:213:                                    ; preds = %212
  %214 = add i64 %124, 2
  %215 = icmp ult i64 %214, %156
  br i1 %215, label %216, label %476

; <label>:216:                                    ; preds = %213
  %217 = add i64 %124, 1
  %218 = getelementptr inbounds i8, i8* %2, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = icmp eq i8 %219, 63
  br i1 %220, label %221, label %476

; <label>:221:                                    ; preds = %216
  %222 = getelementptr inbounds i8, i8* %2, i64 %214
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  switch i32 %224, label %476 [
    i32 33, label %225
    i32 39, label %225
    i32 40, label %225
    i32 41, label %225
    i32 45, label %225
    i32 47, label %225
    i32 60, label %225
    i32 61, label %225
    i32 62, label %225
  ]

; <label>:225:                                    ; preds = %221, %221, %221, %221, %221, %221, %221, %221, %221
  br i1 %112, label %226, label %644

; <label>:226:                                    ; preds = %225
  %227 = icmp ult i64 %125, %131
  br i1 %227, label %228, label %230

; <label>:228:                                    ; preds = %226
  %229 = getelementptr inbounds i8, i8* %0, i64 %125
  store i8 63, i8* %229, align 1
  br label %230

; <label>:230:                                    ; preds = %228, %226
  %231 = add i64 %125, 1
  %232 = icmp ult i64 %231, %131
  br i1 %232, label %233, label %235

; <label>:233:                                    ; preds = %230
  %234 = getelementptr inbounds i8, i8* %0, i64 %231
  store i8 34, i8* %234, align 1
  br label %235

; <label>:235:                                    ; preds = %233, %230
  %236 = add i64 %125, 2
  %237 = icmp ult i64 %236, %131
  br i1 %237, label %238, label %240

; <label>:238:                                    ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236
  store i8 34, i8* %239, align 1
  br label %240

; <label>:240:                                    ; preds = %238, %235
  %241 = add i64 %125, 3
  %242 = icmp ult i64 %241, %131
  br i1 %242, label %243, label %245

; <label>:243:                                    ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241
  store i8 63, i8* %244, align 1
  br label %245

; <label>:245:                                    ; preds = %243, %240
  %246 = add i64 %125, 4
  br label %476

; <label>:247:                                    ; preds = %155
  br label %257

; <label>:248:                                    ; preds = %155
  br label %257

; <label>:249:                                    ; preds = %155
  br label %255

; <label>:250:                                    ; preds = %155
  br label %255

; <label>:251:                                    ; preds = %155
  br label %257

; <label>:252:                                    ; preds = %155
  br i1 %114, label %253, label %254

; <label>:253:                                    ; preds = %252
  br i1 %112, label %542, label %644

; <label>:254:                                    ; preds = %252
  br i1 %122, label %542, label %255

; <label>:255:                                    ; preds = %254, %155, %250, %249
  %256 = phi i8 [ 92, %254 ], [ 116, %250 ], [ 114, %249 ], [ 110, %155 ]
  br i1 %118, label %257, label %644

; <label>:257:                                    ; preds = %255, %155, %251, %248, %247
  %258 = phi i8 [ %256, %255 ], [ 118, %251 ], [ 102, %248 ], [ 98, %247 ], [ 97, %155 ]
  br i1 %105, label %503, label %476

; <label>:259:                                    ; preds = %155, %155
  %260 = icmp eq i64 %156, -1
  br i1 %260, label %261, label %266

; <label>:261:                                    ; preds = %259
  %262 = load i8, i8* %26, align 1
  %263 = icmp ne i8 %262, 0
  %264 = icmp ne i64 %124, 0
  %265 = or i1 %264, %263
  br i1 %265, label %476, label %272

; <label>:266:                                    ; preds = %259
  %267 = icmp ne i64 %156, 1
  %268 = icmp ne i64 %124, 0
  %269 = or i1 %268, %267
  br i1 %269, label %476, label %272

; <label>:270:                                    ; preds = %155, %155
  %271 = icmp eq i64 %124, 0
  br i1 %271, label %272, label %476

; <label>:272:                                    ; preds = %270, %266, %261, %155
  br label %273

; <label>:273:                                    ; preds = %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %272
  %274 = phi i8 [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 1, %272 ]
  br i1 %118, label %476, label %644

; <label>:275:                                    ; preds = %155
  br i1 %114, label %276, label %476

; <label>:276:                                    ; preds = %275
  br i1 %112, label %277, label %644

; <label>:277:                                    ; preds = %276
  %278 = icmp eq i64 %131, 0
  %279 = icmp ne i64 %126, 0
  %280 = or i1 %279, %278
  %281 = select i1 %280, i64 %126, i64 %131
  %282 = select i1 %280, i64 %131, i64 0
  %283 = icmp ult i64 %125, %282
  br i1 %283, label %284, label %286

; <label>:284:                                    ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %125
  store i8 39, i8* %285, align 1
  br label %286

; <label>:286:                                    ; preds = %284, %277
  %287 = add i64 %125, 1
  %288 = icmp ult i64 %287, %282
  br i1 %288, label %289, label %291

; <label>:289:                                    ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287
  store i8 92, i8* %290, align 1
  br label %291

; <label>:291:                                    ; preds = %289, %286
  %292 = add i64 %125, 2
  %293 = icmp ult i64 %292, %282
  br i1 %293, label %294, label %296

; <label>:294:                                    ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292
  store i8 39, i8* %295, align 1
  br label %296

; <label>:296:                                    ; preds = %294, %291
  %297 = add i64 %125, 3
  br label %476

; <label>:298:                                    ; preds = %155
  br i1 %14, label %299, label %308

; <label>:299:                                    ; preds = %298
  %300 = tail call i16** @__ctype_b_loc() #1
  %301 = load i16*, i16** %300, align 8
  %302 = zext i8 %159 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302
  %304 = load i16, i16* %303, align 2
  %305 = lshr i16 %304, 14
  %306 = trunc i16 %305 to i8
  %307 = and i8 %306, 1
  br label %368

; <label>:308:                                    ; preds = %298
  call void @llvm.lifetime.start(i64 8, i8* nonnull %18) #11
  store i64 0, i64* %10, align 8
  %309 = icmp eq i64 %156, -1
  br i1 %309, label %310, label %312

; <label>:310:                                    ; preds = %308
  %311 = call i64 @strlen(i8* nonnull %2) #14
  br label %312

; <label>:312:                                    ; preds = %310, %308
  %313 = phi i64 [ %156, %308 ], [ %311, %310 ]
  br label %314

; <label>:314:                                    ; preds = %312, %355
  %315 = phi i64 [ %360, %355 ], [ 0, %312 ]
  %316 = phi i8 [ %359, %355 ], [ 1, %312 ]
  call void @llvm.lifetime.start(i64 4, i8* nonnull %19) #11
  %317 = add i64 %315, %124
  %318 = getelementptr inbounds i8, i8* %2, i64 %317
  %319 = sub i64 %313, %317
  %320 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %318, i64 %319, %struct.__mbstate_t* nonnull %11) #11
  switch i64 %320, label %334 [
    i64 0, label %350
    i64 -1, label %347
    i64 -2, label %321
  ]

; <label>:321:                                    ; preds = %314
  %322 = icmp ugt i64 %313, %317
  br i1 %322, label %323, label %351

; <label>:323:                                    ; preds = %321
  br label %324

; <label>:324:                                    ; preds = %323, %330
  %325 = phi i64 [ %332, %330 ], [ %317, %323 ]
  %326 = phi i64 [ %331, %330 ], [ %315, %323 ]
  %327 = getelementptr inbounds i8, i8* %2, i64 %325
  %328 = load i8, i8* %327, align 1
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %348, label %330

; <label>:330:                                    ; preds = %324
  %331 = add i64 %326, 1
  %332 = add i64 %331, %124
  %333 = icmp ult i64 %332, %313
  br i1 %333, label %324, label %348

; <label>:334:                                    ; preds = %314
  %335 = icmp ugt i64 %320, 1
  %336 = and i1 %116, %335
  br i1 %336, label %337, label %355

; <label>:337:                                    ; preds = %334
  br label %338

; <label>:338:                                    ; preds = %337, %344
  %339 = phi i64 [ %345, %344 ], [ 1, %337 ]
  %340 = add i64 %339, %317
  %341 = getelementptr inbounds i8, i8* %2, i64 %340
  %342 = load i8, i8* %341, align 1
  %343 = sext i8 %342 to i32
  switch i32 %343, label %344 [
    i32 91, label %367
    i32 92, label %367
    i32 94, label %367
    i32 96, label %367
    i32 124, label %367
  ]

; <label>:344:                                    ; preds = %338
  %345 = add nuw i64 %339, 1
  %346 = icmp ult i64 %345, %320
  br i1 %346, label %338, label %354

; <label>:347:                                    ; preds = %314
  br label %351

; <label>:348:                                    ; preds = %324, %330
  %349 = phi i64 [ %331, %330 ], [ %326, %324 ]
  br label %351

; <label>:350:                                    ; preds = %314
  br label %351

; <label>:351:                                    ; preds = %350, %348, %347, %321
  %352 = phi i64 [ %315, %321 ], [ %315, %347 ], [ %349, %348 ], [ %315, %350 ]
  %353 = phi i8 [ 0, %321 ], [ 0, %347 ], [ 0, %348 ], [ %316, %350 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11
  br label %364

; <label>:354:                                    ; preds = %344
  br label %355

; <label>:355:                                    ; preds = %354, %334
  %356 = load i32, i32* %12, align 4
  %357 = call i32 @iswprint(i32 %356) #11
  %358 = icmp eq i32 %357, 0
  %359 = select i1 %358, i8 0, i8 %316
  %360 = add i64 %320, %315
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11
  %361 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %314, label %363

; <label>:363:                                    ; preds = %355
  br label %364

; <label>:364:                                    ; preds = %363, %351
  %365 = phi i8 [ %353, %351 ], [ %359, %363 ]
  %366 = phi i64 [ %352, %351 ], [ %360, %363 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11
  br label %368

; <label>:367:                                    ; preds = %338, %338, %338, %338, %338
  call void @llvm.lifetime.end(i64 4, i8* nonnull %19) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %18) #11
  br label %649

; <label>:368:                                    ; preds = %364, %299
  %369 = phi i64 [ %156, %299 ], [ %313, %364 ]
  %370 = phi i64 [ 1, %299 ], [ %366, %364 ]
  %371 = phi i8 [ %307, %299 ], [ %365, %364 ]
  %372 = and i8 %371, 1
  %373 = icmp ne i8 %372, 0
  %374 = icmp ult i64 %370, 2
  %375 = or i1 %373, %113
  %376 = and i1 %374, %375
  br i1 %376, label %476, label %377

; <label>:377:                                    ; preds = %368
  %378 = add i64 %370, %124
  br label %379

; <label>:379:                                    ; preds = %472, %377
  %380 = phi i64 [ %124, %377 ], [ %447, %472 ]
  %381 = phi i64 [ %125, %377 ], [ %473, %472 ]
  %382 = phi i8 [ %128, %377 ], [ %468, %472 ]
  %383 = phi i8 [ %159, %377 ], [ %475, %472 ]
  %384 = phi i8 [ %157, %377 ], [ %445, %472 ]
  %385 = phi i8 [ 0, %377 ], [ %446, %472 ]
  br i1 %375, label %432, label %386

; <label>:386:                                    ; preds = %379
  br i1 %112, label %387, label %643

; <label>:387:                                    ; preds = %386
  %388 = and i8 %382, 1
  %389 = icmp eq i8 %388, 0
  %390 = and i1 %114, %389
  br i1 %390, label %391, label %407

; <label>:391:                                    ; preds = %387
  %392 = icmp ult i64 %381, %131
  br i1 %392, label %393, label %395

; <label>:393:                                    ; preds = %391
  %394 = getelementptr inbounds i8, i8* %0, i64 %381
  store i8 39, i8* %394, align 1
  br label %395

; <label>:395:                                    ; preds = %393, %391
  %396 = add i64 %381, 1
  %397 = icmp ult i64 %396, %131
  br i1 %397, label %398, label %400

; <label>:398:                                    ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396
  store i8 36, i8* %399, align 1
  br label %400

; <label>:400:                                    ; preds = %398, %395
  %401 = add i64 %381, 2
  %402 = icmp ult i64 %401, %131
  br i1 %402, label %403, label %405

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds i8, i8* %0, i64 %401
  store i8 39, i8* %404, align 1
  br label %405

; <label>:405:                                    ; preds = %403, %400
  %406 = add i64 %381, 3
  br label %407

; <label>:407:                                    ; preds = %387, %405
  %408 = phi i64 [ %406, %405 ], [ %381, %387 ]
  %409 = phi i8 [ 1, %405 ], [ %382, %387 ]
  %410 = icmp ult i64 %408, %131
  br i1 %410, label %411, label %413

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds i8, i8* %0, i64 %408
  store i8 92, i8* %412, align 1
  br label %413

; <label>:413:                                    ; preds = %411, %407
  %414 = add i64 %408, 1
  %415 = icmp ult i64 %414, %131
  br i1 %415, label %416, label %420

; <label>:416:                                    ; preds = %413
  %417 = lshr i8 %383, 6
  %418 = or i8 %417, 48
  %419 = getelementptr inbounds i8, i8* %0, i64 %414
  store i8 %418, i8* %419, align 1
  br label %420

; <label>:420:                                    ; preds = %416, %413
  %421 = add i64 %408, 2
  %422 = icmp ult i64 %421, %131
  br i1 %422, label %423, label %428

; <label>:423:                                    ; preds = %420
  %424 = lshr i8 %383, 3
  %425 = and i8 %424, 7
  %426 = or i8 %425, 48
  %427 = getelementptr inbounds i8, i8* %0, i64 %421
  store i8 %426, i8* %427, align 1
  br label %428

; <label>:428:                                    ; preds = %423, %420
  %429 = add i64 %408, 3
  %430 = and i8 %383, 7
  %431 = or i8 %430, 48
  br label %441

; <label>:432:                                    ; preds = %379
  %433 = and i8 %384, 1
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %441, label %435

; <label>:435:                                    ; preds = %432
  %436 = icmp ult i64 %381, %131
  br i1 %436, label %437, label %439

; <label>:437:                                    ; preds = %435
  %438 = getelementptr inbounds i8, i8* %0, i64 %381
  store i8 92, i8* %438, align 1
  br label %439

; <label>:439:                                    ; preds = %437, %435
  %440 = add i64 %381, 1
  br label %441

; <label>:441:                                    ; preds = %432, %439, %428
  %442 = phi i64 [ %440, %439 ], [ %381, %432 ], [ %429, %428 ]
  %443 = phi i8 [ %382, %439 ], [ %382, %432 ], [ %409, %428 ]
  %444 = phi i8 [ %383, %439 ], [ %383, %432 ], [ %431, %428 ]
  %445 = phi i8 [ 0, %439 ], [ %384, %432 ], [ %384, %428 ]
  %446 = phi i8 [ %385, %439 ], [ %385, %432 ], [ 1, %428 ]
  %447 = add i64 %380, 1
  %448 = icmp ugt i64 %378, %447
  br i1 %448, label %449, label %541

; <label>:449:                                    ; preds = %441
  %450 = and i8 %443, 1
  %451 = icmp ne i8 %450, 0
  %452 = and i8 %446, 1
  %453 = icmp eq i8 %452, 0
  %454 = and i1 %451, %453
  br i1 %454, label %455, label %466

; <label>:455:                                    ; preds = %449
  %456 = icmp ult i64 %442, %131
  br i1 %456, label %457, label %459

; <label>:457:                                    ; preds = %455
  %458 = getelementptr inbounds i8, i8* %0, i64 %442
  store i8 39, i8* %458, align 1
  br label %459

; <label>:459:                                    ; preds = %457, %455
  %460 = add i64 %442, 1
  %461 = icmp ult i64 %460, %131
  br i1 %461, label %462, label %464

; <label>:462:                                    ; preds = %459
  %463 = getelementptr inbounds i8, i8* %0, i64 %460
  store i8 39, i8* %463, align 1
  br label %464

; <label>:464:                                    ; preds = %462, %459
  %465 = add i64 %442, 2
  br label %466

; <label>:466:                                    ; preds = %449, %464
  %467 = phi i64 [ %465, %464 ], [ %442, %449 ]
  %468 = phi i8 [ 0, %464 ], [ %443, %449 ]
  %469 = icmp ult i64 %467, %131
  br i1 %469, label %470, label %472

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i8, i8* %0, i64 %467
  store i8 %444, i8* %471, align 1
  br label %472

; <label>:472:                                    ; preds = %470, %466
  %473 = add i64 %467, 1
  %474 = getelementptr inbounds i8, i8* %2, i64 %447
  %475 = load i8, i8* %474, align 1
  br label %379

; <label>:476:                                    ; preds = %368, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %155, %273, %188, %190, %193, %207, %209, %211, %212, %270, %266, %261, %275, %296, %257, %245, %221, %216, %213, %210
  %477 = phi i64 [ %124, %296 ], [ %124, %275 ], [ %124, %273 ], [ %124, %270 ], [ %124, %261 ], [ %124, %266 ], [ %124, %257 ], [ %124, %210 ], [ %124, %221 ], [ %214, %245 ], [ %124, %216 ], [ %124, %213 ], [ %124, %212 ], [ %124, %211 ], [ %124, %209 ], [ %124, %207 ], [ %124, %193 ], [ %124, %190 ], [ %124, %188 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %155 ], [ %124, %368 ]
  %478 = phi i64 [ %297, %296 ], [ %125, %275 ], [ %125, %273 ], [ %125, %270 ], [ %125, %261 ], [ %125, %266 ], [ %125, %257 ], [ %125, %210 ], [ %125, %221 ], [ %246, %245 ], [ %125, %216 ], [ %125, %213 ], [ %125, %212 ], [ %125, %211 ], [ %125, %209 ], [ %208, %207 ], [ %189, %193 ], [ %189, %190 ], [ %189, %188 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %155 ], [ %125, %368 ]
  %479 = phi i64 [ %281, %296 ], [ %126, %275 ], [ %126, %273 ], [ %126, %270 ], [ %126, %261 ], [ %126, %266 ], [ %126, %257 ], [ %126, %210 ], [ %126, %221 ], [ %126, %245 ], [ %126, %216 ], [ %126, %213 ], [ %126, %212 ], [ %126, %211 ], [ %126, %209 ], [ %126, %207 ], [ %126, %193 ], [ %126, %190 ], [ %126, %188 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %155 ], [ %126, %368 ]
  %480 = phi i64 [ %156, %296 ], [ %156, %275 ], [ %156, %273 ], [ %156, %270 ], [ -1, %261 ], [ %156, %266 ], [ %156, %257 ], [ %156, %210 ], [ %156, %221 ], [ %156, %245 ], [ %156, %216 ], [ %156, %213 ], [ %156, %212 ], [ %156, %211 ], [ %156, %209 ], [ %156, %207 ], [ %156, %193 ], [ %156, %190 ], [ %156, %188 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %156, %155 ], [ %369, %368 ]
  %481 = phi i8 [ 0, %296 ], [ %128, %275 ], [ %128, %273 ], [ %128, %270 ], [ %128, %261 ], [ %128, %266 ], [ %128, %257 ], [ %128, %210 ], [ %128, %221 ], [ %128, %245 ], [ %128, %216 ], [ %128, %213 ], [ %128, %212 ], [ %128, %211 ], [ %128, %209 ], [ %184, %207 ], [ %184, %193 ], [ %184, %190 ], [ %184, %188 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %155 ], [ %128, %368 ]
  %482 = phi i8 [ 1, %296 ], [ 1, %275 ], [ %129, %273 ], [ %129, %270 ], [ %129, %261 ], [ %129, %266 ], [ %129, %257 ], [ %129, %210 ], [ %129, %221 ], [ %129, %245 ], [ %129, %216 ], [ %129, %213 ], [ %129, %212 ], [ %129, %211 ], [ %129, %209 ], [ %129, %207 ], [ %129, %193 ], [ %129, %190 ], [ %129, %188 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %155 ], [ %129, %368 ]
  %483 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %159, %273 ], [ %159, %270 ], [ %159, %261 ], [ %159, %266 ], [ %159, %257 ], [ 63, %210 ], [ 63, %221 ], [ %223, %245 ], [ 63, %216 ], [ 63, %213 ], [ 63, %212 ], [ 63, %211 ], [ 0, %209 ], [ 48, %207 ], [ 48, %193 ], [ 48, %190 ], [ 48, %188 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %155 ], [ %159, %368 ]
  %484 = phi i8 [ 0, %296 ], [ 0, %275 ], [ 0, %273 ], [ 0, %270 ], [ 0, %261 ], [ 0, %266 ], [ 0, %257 ], [ 0, %210 ], [ 0, %221 ], [ 0, %245 ], [ 0, %216 ], [ 0, %213 ], [ 0, %212 ], [ 0, %211 ], [ 0, %209 ], [ 1, %207 ], [ 1, %193 ], [ 1, %190 ], [ 1, %188 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %155 ], [ 0, %368 ]
  %485 = phi i8 [ 1, %296 ], [ 1, %275 ], [ %274, %273 ], [ 0, %270 ], [ 0, %261 ], [ 0, %266 ], [ 0, %257 ], [ 0, %210 ], [ 0, %221 ], [ 0, %245 ], [ 0, %216 ], [ 0, %213 ], [ 0, %212 ], [ 0, %211 ], [ 0, %209 ], [ 0, %207 ], [ 0, %193 ], [ 0, %190 ], [ 0, %188 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ 1, %155 ], [ %372, %368 ]
  %486 = phi i64 [ %282, %296 ], [ %131, %275 ], [ %131, %273 ], [ %131, %270 ], [ %131, %261 ], [ %131, %266 ], [ %131, %257 ], [ %131, %210 ], [ %131, %221 ], [ %131, %245 ], [ %131, %216 ], [ %131, %213 ], [ %131, %212 ], [ %131, %211 ], [ %131, %209 ], [ %131, %207 ], [ %131, %193 ], [ %131, %190 ], [ %131, %188 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %155 ], [ %131, %368 ]
  br i1 %107, label %488, label %487

; <label>:487:                                    ; preds = %476
  br i1 %117, label %489, label %501

; <label>:488:                                    ; preds = %476
  br i1 %20, label %501, label %489

; <label>:489:                                    ; preds = %488, %487
  %490 = lshr i8 %483, 5
  %491 = zext i8 %490 to i64
  %492 = getelementptr inbounds i32, i32* %6, i64 %491
  %493 = load i32, i32* %492, align 4
  %494 = and i8 %483, 31
  %495 = zext i8 %494 to i32
  %496 = shl i32 1, %495
  %497 = and i32 %493, %496
  %498 = icmp eq i32 %497, 0
  %499 = icmp eq i8 %157, 0
  %500 = and i1 %499, %498
  br i1 %500, label %542, label %503

; <label>:501:                                    ; preds = %488, %487
  %502 = icmp eq i8 %157, 0
  br i1 %502, label %542, label %503

; <label>:503:                                    ; preds = %257, %489, %501
  %504 = phi i64 [ %477, %489 ], [ %477, %501 ], [ %124, %257 ]
  %505 = phi i64 [ %478, %489 ], [ %478, %501 ], [ %125, %257 ]
  %506 = phi i64 [ %479, %489 ], [ %479, %501 ], [ %126, %257 ]
  %507 = phi i64 [ %480, %489 ], [ %480, %501 ], [ %156, %257 ]
  %508 = phi i8 [ %481, %489 ], [ %481, %501 ], [ %128, %257 ]
  %509 = phi i8 [ %482, %489 ], [ %482, %501 ], [ %129, %257 ]
  %510 = phi i8 [ %483, %489 ], [ %483, %501 ], [ %258, %257 ]
  %511 = phi i8 [ %485, %489 ], [ %485, %501 ], [ 0, %257 ]
  %512 = phi i64 [ %486, %489 ], [ %486, %501 ], [ %131, %257 ]
  br i1 %112, label %513, label %644

; <label>:513:                                    ; preds = %503
  %514 = and i8 %508, 1
  %515 = icmp eq i8 %514, 0
  %516 = and i1 %114, %515
  br i1 %516, label %517, label %533

; <label>:517:                                    ; preds = %513
  %518 = icmp ult i64 %505, %512
  br i1 %518, label %519, label %521

; <label>:519:                                    ; preds = %517
  %520 = getelementptr inbounds i8, i8* %0, i64 %505
  store i8 39, i8* %520, align 1
  br label %521

; <label>:521:                                    ; preds = %519, %517
  %522 = add i64 %505, 1
  %523 = icmp ult i64 %522, %512
  br i1 %523, label %524, label %526

; <label>:524:                                    ; preds = %521
  %525 = getelementptr inbounds i8, i8* %0, i64 %522
  store i8 36, i8* %525, align 1
  br label %526

; <label>:526:                                    ; preds = %524, %521
  %527 = add i64 %505, 2
  %528 = icmp ult i64 %527, %512
  br i1 %528, label %529, label %531

; <label>:529:                                    ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527
  store i8 39, i8* %530, align 1
  br label %531

; <label>:531:                                    ; preds = %529, %526
  %532 = add i64 %505, 3
  br label %533

; <label>:533:                                    ; preds = %513, %531
  %534 = phi i64 [ %532, %531 ], [ %505, %513 ]
  %535 = phi i8 [ 1, %531 ], [ %508, %513 ]
  %536 = icmp ult i64 %534, %512
  br i1 %536, label %537, label %539

; <label>:537:                                    ; preds = %533
  %538 = getelementptr inbounds i8, i8* %0, i64 %534
  store i8 92, i8* %538, align 1
  br label %539

; <label>:539:                                    ; preds = %533, %537
  %540 = add i64 %534, 1
  br label %569

; <label>:541:                                    ; preds = %441
  br label %542

; <label>:542:                                    ; preds = %541, %254, %489, %253, %501
  %543 = phi i64 [ %477, %501 ], [ %124, %253 ], [ %477, %489 ], [ %124, %254 ], [ %380, %541 ]
  %544 = phi i64 [ %478, %501 ], [ %125, %253 ], [ %478, %489 ], [ %125, %254 ], [ %442, %541 ]
  %545 = phi i64 [ %479, %501 ], [ %126, %253 ], [ %479, %489 ], [ %126, %254 ], [ %126, %541 ]
  %546 = phi i64 [ %480, %501 ], [ %156, %253 ], [ %480, %489 ], [ %156, %254 ], [ %369, %541 ]
  %547 = phi i8 [ %481, %501 ], [ %128, %253 ], [ %481, %489 ], [ %128, %254 ], [ %443, %541 ]
  %548 = phi i8 [ %482, %501 ], [ %129, %253 ], [ %482, %489 ], [ %129, %254 ], [ %129, %541 ]
  %549 = phi i8 [ %483, %501 ], [ 92, %253 ], [ %483, %489 ], [ 92, %254 ], [ %444, %541 ]
  %550 = phi i8 [ %484, %501 ], [ 0, %253 ], [ %484, %489 ], [ 0, %254 ], [ %446, %541 ]
  %551 = phi i8 [ %485, %501 ], [ 0, %253 ], [ %485, %489 ], [ 0, %254 ], [ %372, %541 ]
  %552 = phi i64 [ %486, %501 ], [ %131, %253 ], [ %486, %489 ], [ %131, %254 ], [ %131, %541 ]
  %553 = and i8 %547, 1
  %554 = icmp ne i8 %553, 0
  %555 = and i8 %550, 1
  %556 = icmp eq i8 %555, 0
  %557 = and i1 %554, %556
  br i1 %557, label %558, label %569

; <label>:558:                                    ; preds = %542
  %559 = icmp ult i64 %544, %552
  br i1 %559, label %560, label %562

; <label>:560:                                    ; preds = %558
  %561 = getelementptr inbounds i8, i8* %0, i64 %544
  store i8 39, i8* %561, align 1
  br label %562

; <label>:562:                                    ; preds = %560, %558
  %563 = add i64 %544, 1
  %564 = icmp ult i64 %563, %552
  br i1 %564, label %565, label %567

; <label>:565:                                    ; preds = %562
  %566 = getelementptr inbounds i8, i8* %0, i64 %563
  store i8 39, i8* %566, align 1
  br label %567

; <label>:567:                                    ; preds = %565, %562
  %568 = add i64 %544, 2
  br label %569

; <label>:569:                                    ; preds = %539, %542, %567
  %570 = phi i64 [ %552, %567 ], [ %552, %542 ], [ %512, %539 ]
  %571 = phi i8 [ %551, %567 ], [ %551, %542 ], [ %511, %539 ]
  %572 = phi i8 [ %549, %567 ], [ %549, %542 ], [ %510, %539 ]
  %573 = phi i8 [ %548, %567 ], [ %548, %542 ], [ %509, %539 ]
  %574 = phi i64 [ %546, %567 ], [ %546, %542 ], [ %507, %539 ]
  %575 = phi i64 [ %545, %567 ], [ %545, %542 ], [ %506, %539 ]
  %576 = phi i64 [ %543, %567 ], [ %543, %542 ], [ %504, %539 ]
  %577 = phi i64 [ %568, %567 ], [ %544, %542 ], [ %540, %539 ]
  %578 = phi i8 [ 0, %567 ], [ %547, %542 ], [ %535, %539 ]
  %579 = icmp ult i64 %577, %570
  br i1 %579, label %580, label %582

; <label>:580:                                    ; preds = %569
  %581 = getelementptr inbounds i8, i8* %0, i64 %577
  store i8 %572, i8* %581, align 1
  br label %582

; <label>:582:                                    ; preds = %580, %569
  %583 = add i64 %577, 1
  %584 = and i8 %571, 1
  %585 = icmp eq i8 %584, 0
  %586 = select i1 %585, i8 0, i8 %130
  br label %587

; <label>:587:                                    ; preds = %582, %209
  %588 = phi i64 [ %124, %209 ], [ %576, %582 ]
  %589 = phi i64 [ %125, %209 ], [ %583, %582 ]
  %590 = phi i64 [ %126, %209 ], [ %575, %582 ]
  %591 = phi i64 [ %156, %209 ], [ %574, %582 ]
  %592 = phi i8 [ %128, %209 ], [ %578, %582 ]
  %593 = phi i8 [ %129, %209 ], [ %573, %582 ]
  %594 = phi i8 [ %130, %209 ], [ %586, %582 ]
  %595 = phi i64 [ %131, %209 ], [ %570, %582 ]
  %596 = add i64 %588, 1
  br label %123

; <label>:597:                                    ; preds = %133, %135
  %598 = phi i64 [ %124, %133 ], [ -1, %135 ]
  %599 = icmp eq i64 %125, 0
  %600 = and i1 %114, %599
  %601 = xor i1 %600, true
  %602 = or i1 %112, %601
  br i1 %602, label %603, label %648

; <label>:603:                                    ; preds = %597
  %604 = and i1 %114, %112
  %605 = xor i1 %604, true
  %606 = and i8 %129, 1
  %607 = icmp eq i8 %606, 0
  %608 = or i1 %607, %605
  br i1 %608, label %618, label %609

; <label>:609:                                    ; preds = %603
  %610 = and i8 %130, 1
  %611 = icmp eq i8 %610, 0
  br i1 %611, label %614, label %612

; <label>:612:                                    ; preds = %609
  %613 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %126, i8* %2, i64 %598, i32 5, i32 %5, i32* %6, i8* %97, i8* %98)
  br label %659

; <label>:614:                                    ; preds = %609
  %615 = icmp eq i64 %131, 0
  %616 = icmp ne i64 %126, 0
  %617 = and i1 %616, %615
  br i1 %617, label %27, label %618

; <label>:618:                                    ; preds = %603, %614
  %619 = icmp ne i8* %100, null
  %620 = and i1 %619, %112
  br i1 %620, label %621, label %638

; <label>:621:                                    ; preds = %618
  %622 = load i8, i8* %100, align 1
  %623 = icmp eq i8 %622, 0
  br i1 %623, label %638, label %624

; <label>:624:                                    ; preds = %621
  br label %625

; <label>:625:                                    ; preds = %624, %632
  %626 = phi i8 [ %635, %632 ], [ %622, %624 ]
  %627 = phi i8* [ %634, %632 ], [ %100, %624 ]
  %628 = phi i64 [ %633, %632 ], [ %125, %624 ]
  %629 = icmp ult i64 %628, %131
  br i1 %629, label %630, label %632

; <label>:630:                                    ; preds = %625
  %631 = getelementptr inbounds i8, i8* %0, i64 %628
  store i8 %626, i8* %631, align 1
  br label %632

; <label>:632:                                    ; preds = %630, %625
  %633 = add i64 %628, 1
  %634 = getelementptr inbounds i8, i8* %627, i64 1
  %635 = load i8, i8* %634, align 1
  %636 = icmp eq i8 %635, 0
  br i1 %636, label %637, label %625

; <label>:637:                                    ; preds = %632
  br label %638

; <label>:638:                                    ; preds = %637, %621, %618
  %639 = phi i64 [ %125, %618 ], [ %125, %621 ], [ %633, %637 ]
  %640 = icmp ult i64 %639, %131
  br i1 %640, label %641, label %659

; <label>:641:                                    ; preds = %638
  %642 = getelementptr inbounds i8, i8* %0, i64 %639
  store i8 0, i8* %642, align 1
  br label %659

; <label>:643:                                    ; preds = %386
  br label %649

; <label>:644:                                    ; preds = %148, %161, %211, %225, %253, %255, %273, %276, %503
  %645 = phi i32 [ %96, %148 ], [ %96, %161 ], [ 2, %211 ], [ 5, %225 ], [ 2, %253 ], [ 2, %255 ], [ 2, %273 ], [ 2, %276 ], [ %96, %503 ]
  %646 = phi i64 [ %146, %148 ], [ %156, %161 ], [ %156, %211 ], [ %156, %225 ], [ %156, %253 ], [ %156, %255 ], [ %156, %273 ], [ %156, %276 ], [ %507, %503 ]
  %647 = phi i64 [ %131, %148 ], [ %131, %161 ], [ %131, %211 ], [ %131, %225 ], [ %131, %253 ], [ %131, %255 ], [ %131, %273 ], [ %131, %276 ], [ %512, %503 ]
  br label %649

; <label>:648:                                    ; preds = %597
  br label %649

; <label>:649:                                    ; preds = %648, %644, %643, %367
  %650 = phi i32 [ 2, %367 ], [ %96, %643 ], [ %645, %644 ], [ %96, %648 ]
  %651 = phi i64 [ %313, %367 ], [ %369, %643 ], [ %646, %644 ], [ %598, %648 ]
  %652 = phi i64 [ %131, %367 ], [ %131, %643 ], [ %647, %644 ], [ %131, %648 ]
  %653 = icmp ne i32 %650, 2
  %654 = icmp eq i8 %104, 0
  %655 = or i1 %653, %654
  %656 = select i1 %655, i32 %650, i32 4
  %657 = and i32 %5, -3
  %658 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %652, i8* %2, i64 %651, i32 %656, i32 %657, i32* null, i8* %97, i8* %98)
  br label %659

; <label>:659:                                    ; preds = %638, %641, %649, %612
  %660 = phi i64 [ %658, %649 ], [ %613, %612 ], [ %639, %641 ], [ %639, %638 ]
  ret i64 %660
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #6 {
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11
  %4 = icmp eq i8* %3, %0
  br i1 %4, label %5, label %75

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -33
  switch i32 %9, label %72 [
    i32 85, label %10
    i32 71, label %38
  ]

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds i8, i8* %6, i64 1
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -33
  %15 = icmp eq i32 %14, 84
  br i1 %15, label %16, label %72

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds i8, i8* %6, i64 2
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = and i32 %19, -33
  %21 = icmp eq i32 %20, 70
  br i1 %21, label %22, label %72

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds i8, i8* %6, i64 3
  %24 = load i8, i8* %23, align 1
  %25 = icmp eq i8 %24, 45
  br i1 %25, label %26, label %72

; <label>:26:                                     ; preds = %22
  %27 = getelementptr inbounds i8, i8* %6, i64 4
  %28 = load i8, i8* %27, align 1
  %29 = icmp eq i8 %28, 56
  br i1 %29, label %30, label %72

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds i8, i8* %6, i64 5
  %32 = load i8, i8* %31, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %72

; <label>:34:                                     ; preds = %30
  %35 = load i8, i8* %0, align 1
  %36 = icmp eq i8 %35, 96
  %37 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.254, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.255, i64 0, i64 0)
  br label %75

; <label>:38:                                     ; preds = %5
  %39 = getelementptr inbounds i8, i8* %6, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, -33
  %43 = icmp eq i32 %42, 66
  br i1 %43, label %44, label %72

; <label>:44:                                     ; preds = %38
  %45 = getelementptr inbounds i8, i8* %6, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = icmp eq i8 %46, 49
  br i1 %47, label %48, label %72

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds i8, i8* %6, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = icmp eq i8 %50, 56
  br i1 %51, label %52, label %72

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %6, i64 4
  %54 = load i8, i8* %53, align 1
  %55 = icmp eq i8 %54, 48
  br i1 %55, label %56, label %72

; <label>:56:                                     ; preds = %52
  %57 = getelementptr inbounds i8, i8* %6, i64 5
  %58 = load i8, i8* %57, align 1
  %59 = icmp eq i8 %58, 51
  br i1 %59, label %60, label %72

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds i8, i8* %6, i64 6
  %62 = load i8, i8* %61, align 1
  %63 = icmp eq i8 %62, 48
  br i1 %63, label %64, label %72

; <label>:64:                                     ; preds = %60
  %65 = getelementptr inbounds i8, i8* %6, i64 7
  %66 = load i8, i8* %65, align 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %72

; <label>:68:                                     ; preds = %64
  %69 = load i8, i8* %0, align 1
  %70 = icmp eq i8 %69, 96
  %71 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.256, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.257, i64 0, i64 0)
  br label %75

; <label>:72:                                     ; preds = %5, %30, %26, %22, %16, %10, %64, %60, %56, %52, %48, %44, %38
  %73 = icmp eq i32 %1, 9
  %74 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.253, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.252, i64 0, i64 0)
  br label %75

; <label>:75:                                     ; preds = %2, %72, %68, %34
  %76 = phi i8* [ %37, %34 ], [ %71, %68 ], [ %74, %72 ], [ %3, %2 ]
  ret i8* %76
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #6 {
  %4 = icmp ne %struct.quoting_options* %2, null
  %5 = select i1 %4, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options
  %6 = tail call i32* @__errno_location() #1
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, 1
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  %17 = load i8*, i8** %16, align 8
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* %13, i8* %15, i8* %17) #11
  %19 = add i64 %18, 1
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11
  %21 = load i32, i32* %11, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = load i8*, i8** %16, align 8
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* %13, i8* %22, i8* %23) #11
  store i32 %7, i32* %6, align 4
  ret i8* %20
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #6 {
  %5 = icmp ne %struct.quoting_options* %3, null
  %6 = select i1 %5, %struct.quoting_options* %3, %struct.quoting_options* @default_quoting_options
  %7 = tail call i32* @__errno_location() #1
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i64* %2, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = or i32 %10, %13
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  %21 = load i8*, i8** %20, align 8
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* %17, i8* %19, i8* %21)
  %23 = add i64 %22, 1
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11
  %25 = load i32, i32* %15, align 8
  %26 = load i8*, i8** %18, align 8
  %27 = load i8*, i8** %20, align 8
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* %17, i8* %26, i8* %27)
  store i32 %8, i32* %7, align 4
  br i1 %11, label %29, label %30

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8
  br label %30

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24
}

; Function Attrs: nounwind sspstrong uwtable
define void @quotearg_free() local_unnamed_addr #6 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8
  %2 = load i32, i32* @nslots, align 4
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %14

; <label>:4:                                      ; preds = %0
  br label %5

; <label>:5:                                      ; preds = %4, %5
  %6 = phi i64 [ %9, %5 ], [ 1, %4 ]
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %6, i32 1
  %8 = load i8*, i8** %7, align 8
  tail call void @free(i8* %8) #11
  %9 = add nuw i64 %6, 1
  %10 = load i32, i32* @nslots, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp slt i64 %9, %11
  br i1 %12, label %5, label %13

; <label>:13:                                     ; preds = %5
  br label %14

; <label>:14:                                     ; preds = %13, %0
  %15 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %14
  tail call void @free(i8* %16) #11
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8
  br label %19

; <label>:19:                                     ; preds = %14, %18
  %20 = icmp eq %struct.slotvec* %1, @slotvec0
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %19
  %22 = bitcast %struct.slotvec* %1 to i8*
  tail call void @free(i8* %22) #11
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8
  br label %23

; <label>:23:                                     ; preds = %19, %21
  store i32 1, i32* @nslots, align 4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n(i32, i8*) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options)
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #6 {
  %5 = tail call i32* @__errno_location() #1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8
  %8 = icmp slt i32 %0, 0
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15
  unreachable

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4
  %12 = icmp sgt i32 %11, %0
  br i1 %12, label %34, label %13

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0
  %15 = icmp ugt i32 %0, 2147483646
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15
  unreachable

; <label>:17:                                     ; preds = %13
  %18 = bitcast %struct.slotvec* %7 to i8*
  %19 = select i1 %14, i8* null, i8* %18
  %20 = add nsw i32 %0, 1
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 4
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11
  %24 = bitcast i8* %23 to %struct.slotvec*
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8
  br i1 %14, label %25, label %26

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i32 8, i1 false)
  br label %26

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28
  %30 = bitcast %struct.slotvec* %29 to i8*
  %31 = sub nsw i32 %20, %27
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 4
  tail call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %33, i32 8, i1 false)
  store i32 %20, i32* @nslots, align 4
  br label %34

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ]
  %36 = sext i32 %0 to i64
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, 1
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* %46, i8* %48, i8* %50)
  %52 = icmp ugt i64 %38, %51
  br i1 %52, label %63, label %53

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1
  store i64 %54, i64* %37, align 8
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %55, label %57, label %56

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11
  br label %57

; <label>:57:                                     ; preds = %53, %56
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11
  store i8* %58, i8** %39, align 8
  %59 = load i32, i32* %44, align 8
  %60 = load i8*, i8** %47, align 8
  %61 = load i8*, i8** %49, align 8
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* %46, i8* %60, i8* %61)
  br label %63

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ]
  store i32 %6, i32* %5, align 4
  ret i8* %64
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg(i8*) local_unnamed_addr #6 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7)
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false)
  %8 = icmp eq i32 %1, 10
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15
  unreachable

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %13 = bitcast i32* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #6 {
  %5 = alloca [52 x i8], align 4
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8)
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false)
  %9 = icmp eq i32 %1, 10
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %4
  tail call void @abort() #15
  unreachable

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 %1, i32* %12, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1
  %14 = bitcast i32* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* nonnull %8, i64 52, i32 4, i1 false) #11
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8)
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %6)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style(i32, i8*) local_unnamed_addr #6 {
  %3 = alloca [52 x i8], align 4
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11
  %6 = getelementptr inbounds [52 x i8], [52 x i8]* %3, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %6)
  call void @llvm.memset.p0i8.i64(i8* nonnull %6, i8 0, i64 52, i32 4, i1 false)
  %7 = icmp eq i32 %0, 10
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  tail call void @abort() #15
  unreachable

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %12 = bitcast i32* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* nonnull %6, i64 52, i32 4, i1 false) #11
  call void @llvm.lifetime.end(i64 52, i8* nonnull %6)
  %13 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %4) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11
  ret i8* %13
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %7)
  call void @llvm.memset.p0i8.i64(i8* nonnull %7, i8 0, i64 52, i32 4, i1 false)
  %8 = icmp eq i32 %0, 10
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15
  unreachable

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %13 = bitcast i32* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* nonnull %7, i64 52, i32 4, i1 false) #11
  call void @llvm.lifetime.end(i64 52, i8* nonnull %7)
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %5) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #6 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false)
  %6 = lshr i8 %2, 5
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7
  %9 = and i8 %2, 31
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %8, align 4
  %12 = lshr i32 %11, %10
  %13 = and i32 %12, 1
  %14 = xor i32 %13, 1
  %15 = shl i32 %14, %10
  %16 = xor i32 %15, %11
  store i32 %16, i32* %8, align 4
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11
  ret i8* %17
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #6 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11
  %5 = lshr i8 %1, 5
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6
  %8 = and i8 %1, 31
  %9 = zext i8 %8 to i32
  %10 = load i32, i32* %7, align 4
  %11 = lshr i32 %10, %9
  %12 = and i32 %11, 1
  %13 = xor i32 %12, 1
  %14 = shl i32 %13, %9
  %15 = xor i32 %14, %10
  store i32 %15, i32* %7, align 4
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon(i8*) local_unnamed_addr #6 {
  %2 = alloca %struct.quoting_options, align 8
  %3 = bitcast %struct.quoting_options* %2 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %3) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %3, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1
  %5 = load i32, i32* %4, align 4
  %6 = or i32 %5, 67108864
  store i32 %6, i32* %4, align 4
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %3) #11
  ret i8* %7
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %4) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %4, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1
  %6 = load i32, i32* %5, align 4
  %7 = or i32 %6, 67108864
  store i32 %7, i32* %5, align 4
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %4) #11
  ret i8* %8
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #6 {
  %4 = alloca [52 x i8], align 4
  %5 = alloca %struct.quoting_options, align 8
  %6 = alloca [52 x i8], align 4
  %7 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11
  %8 = getelementptr inbounds [52 x i8], [52 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 52, i8* nonnull %8)
  call void @llvm.memset.p0i8.i64(i8* nonnull %8, i8 0, i64 52, i32 4, i1 false)
  %9 = icmp eq i32 %1, 10
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds [52 x i8], [52 x i8]* %6, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %12, i8* nonnull %8, i64 52, i32 4, i1 false)
  call void @llvm.lifetime.end(i64 52, i8* nonnull %8)
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %1, i32* %13, align 8
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %15 = bitcast i32* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* nonnull %12, i64 52, i32 4, i1 false)
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, 67108864
  store i32 %18, i32* %16, align 4
  %19 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %5)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11
  ret i8* %19
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #6 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8
  %8 = icmp ne i8* %1, null
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15
  unreachable

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %13, align 8
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %14, align 8
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #6 {
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %7) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %7, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false)
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 10, i32* %8, align 8
  %9 = icmp ne i8* %1, null
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15
  unreachable

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  store i8* %1, i8** %14, align 8
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  store i8* %2, i8** %15, align 8
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6)
  call void @llvm.lifetime.end(i64 56, i8* nonnull %7) #11
  ret i8* %16
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #6 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %5) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 10, i32* %6, align 8
  %7 = icmp ne i8* %0, null
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15
  unreachable

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3
  store i8* %0, i8** %12, align 8
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4
  store i8* %1, i8** %13, align 8
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %5) #11
  ret i8* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #6 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start(i64 56, i8* nonnull %6) #11
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %6, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i32 8, i1 false) #11
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8
  %8 = icmp ne i8* %0, null
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15
  unreachable

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %0, i8** %13, align 8
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %1, i8** %14, align 8
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11
  call void @llvm.lifetime.end(i64 56, i8* nonnull %6) #11
  ret i8* %15
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #6 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_mem(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote_n(i32, i8*) local_unnamed_addr #6 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @quote(i8*) local_unnamed_addr #6 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.timespec* @get_root_dev_ino(%struct.timespec*) local_unnamed_addr #6 {
  %2 = alloca %struct.stat, align 8
  %3 = bitcast %struct.stat* %2 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %3) #11
  %4 = call i32 @__lxstat(i32 1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.270, i64 0, i64 0), %struct.stat* nonnull %2) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 0
  store i64 %8, i64* %9, align 8
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 1
  store i64 %11, i64* %12, align 8
  br label %13

; <label>:13:                                     ; preds = %1, %6
  %14 = phi %struct.timespec* [ %0, %6 ], [ null, %1 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %3) #11
  ret %struct.timespec* %14
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @safe_write(i32, i8* nocapture readonly, i64) local_unnamed_addr #6 {
  br label %4

; <label>:4:                                      ; preds = %13, %3
  %5 = phi i64 [ 2147475456, %13 ], [ %2, %3 ]
  br label %6

; <label>:6:                                      ; preds = %4, %9
  %7 = tail call i64 @write(i32 %0, i8* %1, i64 %5) #11
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %17, label %9

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %6, label %13

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i32 %11, 22
  %15 = icmp ugt i64 %5, 2147475456
  %16 = and i1 %15, %14
  br i1 %16, label %4, label %18

; <label>:17:                                     ; preds = %6
  br label %19

; <label>:18:                                     ; preds = %13
  br label %19

; <label>:19:                                     ; preds = %18, %17
  ret i64 %7
}

declare i64 @write(i32, i8* nocapture readonly, i64) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @same_name(i8*, i8*) local_unnamed_addr #6 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = tail call i8* @last_component(i8* %0) #14
  %6 = tail call i8* @last_component(i8* %1) #14
  %7 = tail call i64 @base_len(i8* %5) #14
  %8 = tail call i64 @base_len(i8* %6) #14
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %43

; <label>:10:                                     ; preds = %2
  %11 = tail call i32 @memcmp(i8* %5, i8* %6, i64 %7) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %43

; <label>:13:                                     ; preds = %10
  %14 = bitcast %struct.stat* %3 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %14) #11
  %15 = bitcast %struct.stat* %4 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %15) #11
  %16 = tail call i8* @dir_name(i8* %0) #11
  %17 = tail call i8* @dir_name(i8* %1) #11
  %18 = call i32 @__xstat(i32 1, i8* nonnull %16, %struct.stat* nonnull %3) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

; <label>:20:                                     ; preds = %13
  %21 = tail call i32* @__errno_location() #1
  %22 = load i32, i32* %21, align 4
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.275, i64 0, i64 0), i8* %16) #11
  br label %23

; <label>:23:                                     ; preds = %13, %20
  %24 = call i32 @__xstat(i32 1, i8* nonnull %17, %struct.stat* nonnull %4) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

; <label>:26:                                     ; preds = %23
  %27 = tail call i32* @__errno_location() #1
  %28 = load i32, i32* %27, align 4
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.275, i64 0, i64 0), i8* %17) #11
  br label %29

; <label>:29:                                     ; preds = %23, %26
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %41

; <label>:35:                                     ; preds = %29
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %37, %39
  br label %41

; <label>:41:                                     ; preds = %35, %29
  %42 = phi i1 [ false, %29 ], [ %40, %35 ]
  call void @free(i8* %16) #11
  call void @free(i8* %17) #11
  call void @llvm.lifetime.end(i64 144, i8* nonnull %15) #11
  call void @llvm.lifetime.end(i64 144, i8* nonnull %14) #11
  br label %43

; <label>:43:                                     ; preds = %2, %41, %10
  %44 = phi i1 [ %42, %41 ], [ false, %10 ], [ false, %2 ]
  ret i1 %44
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @streamsavedir(%struct.__dirstream*, i32) local_unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [3 x i32 (i8*, i8*)*], [3 x i32 (i8*, i8*)*]* @comparison_function_table, i64 0, i64 %3
  %5 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %4, align 8
  %6 = icmp eq %struct.__dirstream* %0, null
  br i1 %6, label %153, label %7

; <label>:7:                                      ; preds = %2
  %8 = add nsw i64 %3, -1
  %9 = icmp ult i64 %8, 2
  br label %10

; <label>:10:                                     ; preds = %7, %100
  %11 = phi i64 [ 0, %7 ], [ %110, %100 ]
  %12 = phi i64 [ 0, %7 ], [ %101, %100 ]
  %13 = phi i64 [ 0, %7 ], [ %102, %100 ]
  %14 = phi i8* [ null, %7 ], [ %103, %100 ]
  %15 = phi i8* [ null, %7 ], [ %104, %100 ]
  %16 = phi i8* [ null, %7 ], [ %105, %100 ]
  %17 = phi i8* [ null, %7 ], [ %106, %100 ]
  %18 = phi %struct.direntry_t* [ null, %7 ], [ %107, %100 ]
  %19 = phi i64 [ 0, %7 ], [ %108, %100 ]
  %20 = phi i8* [ null, %7 ], [ %109, %100 ]
  br label %21

; <label>:21:                                     ; preds = %10, %36
  %22 = tail call i32* @__errno_location() #1
  store i32 0, i32* %22, align 4
  %23 = tail call %struct.dirent* @readdir(%struct.__dirstream* nonnull %0) #11
  %24 = icmp eq %struct.dirent* %23, null
  br i1 %24, label %111, label %25

; <label>:25:                                     ; preds = %21
  %26 = getelementptr inbounds %struct.dirent, %struct.dirent* %23, i64 0, i32 4, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = icmp eq i8 %27, 46
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %25
  %30 = getelementptr inbounds %struct.dirent, %struct.dirent* %23, i64 0, i32 4, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 46
  %33 = select i1 %32, i64 1, i64 2
  %34 = getelementptr inbounds %struct.dirent, %struct.dirent* %23, i64 0, i32 4, i64 %33
  %35 = load i8, i8* %34, align 1
  br label %36

; <label>:36:                                     ; preds = %25, %29
  %37 = phi i8 [ %35, %29 ], [ %27, %25 ]
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %21, label %39

; <label>:39:                                     ; preds = %36
  %40 = tail call i64 @strlen(i8* nonnull %26) #14
  %41 = add i64 %40, 1
  br i1 %9, label %42, label %74

; <label>:42:                                     ; preds = %39
  %43 = icmp eq i64 %13, %12
  br i1 %43, label %44, label %61

; <label>:44:                                     ; preds = %42
  %45 = icmp eq i8* %17, null
  br i1 %45, label %46, label %49

; <label>:46:                                     ; preds = %44
  %47 = icmp eq i64 %12, 0
  %48 = select i1 %47, i64 8, i64 %12
  br label %56

; <label>:49:                                     ; preds = %44
  %50 = icmp ult i64 %12, 384307168202282325
  br i1 %50, label %52, label %51

; <label>:51:                                     ; preds = %49
  tail call void @xalloc_die() #15
  unreachable

; <label>:52:                                     ; preds = %49
  %53 = lshr i64 %12, 1
  %54 = add i64 %12, 1
  %55 = add i64 %54, %53
  br label %56

; <label>:56:                                     ; preds = %46, %52
  %57 = phi i64 [ %55, %52 ], [ %48, %46 ]
  %58 = shl i64 %57, 4
  %59 = tail call i8* @xrealloc(i8* %17, i64 %58) #11
  %60 = bitcast i8* %59 to %struct.direntry_t*
  br label %61

; <label>:61:                                     ; preds = %56, %42
  %62 = phi i64 [ %57, %56 ], [ %13, %42 ]
  %63 = phi i8* [ %59, %56 ], [ %14, %42 ]
  %64 = phi i8* [ %59, %56 ], [ %15, %42 ]
  %65 = phi i8* [ %59, %56 ], [ %16, %42 ]
  %66 = phi i8* [ %59, %56 ], [ %17, %42 ]
  %67 = phi %struct.direntry_t* [ %60, %56 ], [ %18, %42 ]
  %68 = tail call noalias i8* @xstrdup(i8* %26) #11
  %69 = getelementptr inbounds %struct.direntry_t, %struct.direntry_t* %67, i64 %12, i32 0
  store i8* %68, i8** %69, align 8
  %70 = getelementptr inbounds %struct.dirent, %struct.dirent* %23, i64 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.direntry_t, %struct.direntry_t* %67, i64 %12, i32 1
  store i64 %71, i64* %72, align 8
  %73 = add i64 %12, 1
  br label %100

; <label>:74:                                     ; preds = %39
  %75 = sub i64 %19, %11
  %76 = icmp ugt i64 %75, %41
  br i1 %76, label %96, label %77

; <label>:77:                                     ; preds = %74
  %78 = add i64 %41, %11
  %79 = icmp ult i64 %78, %11
  br i1 %79, label %80, label %81

; <label>:80:                                     ; preds = %77
  tail call void @xalloc_die() #15
  unreachable

; <label>:81:                                     ; preds = %77
  %82 = icmp eq i8* %20, null
  br i1 %82, label %83, label %86

; <label>:83:                                     ; preds = %81
  %84 = icmp eq i64 %78, 0
  %85 = select i1 %84, i64 128, i64 %78
  br label %93

; <label>:86:                                     ; preds = %81
  %87 = icmp ult i64 %78, 6148914691236517204
  br i1 %87, label %89, label %88

; <label>:88:                                     ; preds = %86
  tail call void @xalloc_die() #15
  unreachable

; <label>:89:                                     ; preds = %86
  %90 = lshr i64 %78, 1
  %91 = add i64 %78, 1
  %92 = add i64 %91, %90
  br label %93

; <label>:93:                                     ; preds = %83, %89
  %94 = phi i64 [ %92, %89 ], [ %85, %83 ]
  %95 = tail call i8* @xrealloc(i8* %20, i64 %94) #11
  br label %96

; <label>:96:                                     ; preds = %74, %93
  %97 = phi i64 [ %94, %93 ], [ %19, %74 ]
  %98 = phi i8* [ %95, %93 ], [ %20, %74 ]
  %99 = getelementptr inbounds i8, i8* %98, i64 %11
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %99, i8* %26, i64 %41, i32 1, i1 false)
  br label %100

; <label>:100:                                    ; preds = %96, %61
  %101 = phi i64 [ %73, %61 ], [ %12, %96 ]
  %102 = phi i64 [ %62, %61 ], [ %13, %96 ]
  %103 = phi i8* [ %63, %61 ], [ %14, %96 ]
  %104 = phi i8* [ %64, %61 ], [ %15, %96 ]
  %105 = phi i8* [ %65, %61 ], [ %16, %96 ]
  %106 = phi i8* [ %66, %61 ], [ %17, %96 ]
  %107 = phi %struct.direntry_t* [ %67, %61 ], [ %18, %96 ]
  %108 = phi i64 [ %19, %61 ], [ %97, %96 ]
  %109 = phi i8* [ %20, %61 ], [ %98, %96 ]
  %110 = add i64 %41, %11
  br label %10

; <label>:111:                                    ; preds = %21
  %112 = load i32, i32* %22, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %115, label %114

; <label>:114:                                    ; preds = %111
  tail call void @free(i8* %16) #11
  tail call void @free(i8* %20) #11
  store i32 %112, i32* %22, align 4
  br label %153

; <label>:115:                                    ; preds = %111
  br i1 %9, label %116, label %144

; <label>:116:                                    ; preds = %115
  %117 = icmp eq i64 %12, 0
  br i1 %117, label %118, label %121

; <label>:118:                                    ; preds = %116
  %119 = add i64 %11, 1
  %120 = tail call noalias i8* @xmalloc(i64 %119) #11
  br label %141

; <label>:121:                                    ; preds = %116
  tail call void @qsort(i8* %15, i64 %12, i64 16, i32 (i8*, i8*)* %5) #11
  %122 = add i64 %11, 1
  %123 = tail call noalias i8* @xmalloc(i64 %122) #11
  br label %124

; <label>:124:                                    ; preds = %124, %121
  %125 = phi i64 [ %138, %124 ], [ 0, %121 ]
  %126 = phi i64 [ %136, %124 ], [ 0, %121 ]
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  %128 = getelementptr inbounds %struct.direntry_t, %struct.direntry_t* %18, i64 %125, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %127, i1 false) #11
  %131 = tail call i8* @__stpcpy_chk(i8* nonnull %127, i8* nonnull %129, i64 %130) #11
  %132 = ptrtoint i8* %131 to i64
  %133 = ptrtoint i8* %127 to i64
  %134 = add i64 %126, 1
  %135 = sub i64 %134, %133
  %136 = add i64 %135, %132
  %137 = load i8*, i8** %128, align 8
  tail call void @free(i8* %137) #11
  %138 = add nuw i64 %125, 1
  %139 = icmp eq i64 %138, %12
  br i1 %139, label %140, label %124

; <label>:140:                                    ; preds = %124
  br label %141

; <label>:141:                                    ; preds = %140, %118
  %142 = phi i8* [ %120, %118 ], [ %123, %140 ]
  %143 = phi i64 [ 0, %118 ], [ %136, %140 ]
  tail call void @free(i8* %14) #11
  br label %149

; <label>:144:                                    ; preds = %115
  %145 = icmp eq i64 %19, %11
  br i1 %145, label %146, label %149

; <label>:146:                                    ; preds = %144
  %147 = add i64 %11, 1
  %148 = tail call i8* @xrealloc(i8* %20, i64 %147) #11
  br label %149

; <label>:149:                                    ; preds = %144, %146, %141
  %150 = phi i64 [ %143, %141 ], [ %11, %146 ], [ %11, %144 ]
  %151 = phi i8* [ %142, %141 ], [ %148, %146 ], [ %20, %144 ]
  %152 = getelementptr inbounds i8, i8* %151, i64 %150
  store i8 0, i8* %152, align 1
  br label %153

; <label>:153:                                    ; preds = %2, %149, %114
  %154 = phi i8* [ null, %114 ], [ %151, %149 ], [ null, %2 ]
  ret i8* %154
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind
declare i8* @__stpcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i32 @direntry_cmp_name(i8* nocapture readonly, i8* nocapture readonly) #12 {
  %3 = bitcast i8* %0 to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = bitcast i8* %1 to i8**
  %6 = load i8*, i8** %5, align 8
  %7 = tail call i32 @strcmp(i8* %4, i8* %6) #11
  ret i32 %7
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i32 @direntry_cmp_inode(i8* nocapture readonly, i8* nocapture readonly) #12 {
  %3 = getelementptr inbounds i8, i8* %0, i64 8
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  %10 = icmp ugt i64 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @savedir(i8*, i32) local_unnamed_addr #6 {
  %3 = tail call %struct.__dirstream* @opendir_safer(i8* %0) #11
  %4 = icmp eq %struct.__dirstream* %3, null
  br i1 %4, label %12, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @streamsavedir(%struct.__dirstream* nonnull %3, i32 %1)
  %7 = tail call i32 @closedir(%struct.__dirstream* nonnull %3)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

; <label>:9:                                      ; preds = %5
  %10 = tail call i32* @__errno_location() #1
  %11 = load i32, i32* %10, align 4
  tail call void @free(i8* %6) #11
  store i32 %11, i32* %10, align 4
  br label %12

; <label>:12:                                     ; preds = %9, %5, %2
  %13 = phi i8* [ null, %2 ], [ null, %9 ], [ %6, %5 ]
  ret i8* %13
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @try_tempname_len(i8*, i32, i8*, i32 (i8*, i8*)* nocapture, i64) local_unnamed_addr #6 {
  %6 = tail call i32* @__errno_location() #1
  %7 = load i32, i32* %6, align 4
  %8 = tail call i64 @strlen(i8* %0) #14
  %9 = sext i32 %1 to i64
  %10 = add i64 %9, %4
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %51, label %12

; <label>:12:                                     ; preds = %5
  %13 = sub i64 %8, %10
  %14 = getelementptr inbounds i8, i8* %0, i64 %13
  %15 = tail call i64 @strspn(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.280, i64 0, i64 0)) #11
  %16 = icmp ult i64 %15, %4
  br i1 %16, label %51, label %17

; <label>:17:                                     ; preds = %12
  %18 = tail call %struct.randint_source* @randint_all_new(i8* null, i64 %4) #11
  %19 = icmp eq %struct.randint_source* %18, null
  br i1 %19, label %54, label %20

; <label>:20:                                     ; preds = %17
  %21 = icmp eq i64 %4, 0
  br label %24

; <label>:22:                                     ; preds = %40
  %23 = icmp ult i32 %43, 238328
  br i1 %23, label %24, label %44

; <label>:24:                                     ; preds = %20, %22
  %25 = phi i32 [ 0, %20 ], [ %43, %22 ]
  br i1 %21, label %36, label %26

; <label>:26:                                     ; preds = %24
  br label %27

; <label>:27:                                     ; preds = %26, %27
  %28 = phi i64 [ %33, %27 ], [ 0, %26 ]
  %29 = tail call i64 @randint_genmax(%struct.randint_source* nonnull %18, i64 61) #11
  %30 = getelementptr inbounds [63 x i8], [63 x i8]* @letters, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = getelementptr inbounds i8, i8* %14, i64 %28
  store i8 %31, i8* %32, align 1
  %33 = add nuw i64 %28, 1
  %34 = icmp eq i64 %33, %4
  br i1 %34, label %35, label %27

; <label>:35:                                     ; preds = %27
  br label %36

; <label>:36:                                     ; preds = %35, %24
  %37 = tail call i32 %3(i8* %0, i8* %2) #11
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %36
  store i32 %7, i32* %6, align 4
  br label %47

; <label>:40:                                     ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 17
  %43 = add nuw nsw i32 %25, 1
  br i1 %42, label %22, label %46

; <label>:44:                                     ; preds = %22
  %45 = tail call i32 @randint_all_free(%struct.randint_source* nonnull %18) #11
  br label %51

; <label>:46:                                     ; preds = %40
  br label %47

; <label>:47:                                     ; preds = %46, %39
  %48 = phi i32 [ %7, %39 ], [ %41, %46 ]
  %49 = phi i32 [ %37, %39 ], [ -1, %46 ]
  %50 = tail call i32 @randint_all_free(%struct.randint_source* nonnull %18) #11
  br label %51

; <label>:51:                                     ; preds = %12, %5, %44, %47
  %52 = phi i32 [ %48, %47 ], [ 17, %44 ], [ 22, %12 ], [ 22, %5 ]
  %53 = phi i32 [ %49, %47 ], [ -1, %44 ], [ -1, %12 ], [ -1, %5 ]
  store i32 %52, i32* %6, align 4
  br label %54

; <label>:54:                                     ; preds = %51, %17
  %55 = phi i32 [ -1, %17 ], [ %53, %51 ]
  ret i32 %55
}

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define i32 @gen_tempname_len(i8*, i32, i32, i32, i64) local_unnamed_addr #6 {
  %6 = alloca i32, align 4
  store i32 %2, i32* %6, align 4
  %7 = icmp ult i32 %3, 3
  br i1 %7, label %9, label %8

; <label>:8:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.281, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.282, i64 0, i64 0), i32 328, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.gen_tempname_len, i64 0, i64 0)) #15
  unreachable

; <label>:9:                                      ; preds = %5
  %10 = sext i32 %3 to i64
  %11 = getelementptr inbounds [3 x i32 (i8*, i8*)*], [3 x i32 (i8*, i8*)*]* @switch.table.283, i64 0, i64 %10
  %12 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %11, align 8
  %13 = bitcast i32* %6 to i8*
  %14 = call i32 @try_tempname_len(i8* %0, i32 %1, i8* nonnull %13, i32 (i8*, i8*)* %12, i64 %4)
  ret i32 %14
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @try_file(i8* nocapture readonly, i8* nocapture readonly) #6 {
  %3 = bitcast i8* %1 to i32*
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, -196
  %6 = or i32 %5, 194
  %7 = tail call i32 (i8*, i32, ...) @open(i8* %0, i32 %6, i32 384) #11
  ret i32 %7
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @try_dir(i8* nocapture readonly, i8* nocapture readnone) #6 {
  %3 = tail call i32 @mkdir(i8* %0, i32 448) #11
  ret i32 %3
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @try_nocreate(i8*, i8* nocapture readnone) #6 {
  %3 = alloca %struct.stat, align 8
  %4 = bitcast %struct.stat* %3 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %4) #11
  %5 = call i32 @__lxstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %3) #11
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32* @__errno_location() #1
  br i1 %6, label %8, label %9

; <label>:8:                                      ; preds = %2
  store i32 17, i32* %7, align 4
  br label %9

; <label>:9:                                      ; preds = %2, %8
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 2
  %12 = sext i1 %11 to i32
  call void @llvm.lifetime.end(i64 144, i8* nonnull %4) #11
  ret i32 %12
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @gen_tempname(i8*, i32, i32, i32) local_unnamed_addr #6 {
  %5 = alloca i32, align 4
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6)
  store i32 %2, i32* %5, align 4
  %7 = icmp ult i32 %3, 3
  br i1 %7, label %9, label %8

; <label>:8:                                      ; preds = %4
  tail call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.281, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.282, i64 0, i64 0), i32 328, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.gen_tempname_len, i64 0, i64 0)) #15
  unreachable

; <label>:9:                                      ; preds = %4
  %10 = sext i32 %3 to i64
  %11 = getelementptr inbounds [3 x i32 (i8*, i8*)*], [3 x i32 (i8*, i8*)*]* @switch.table.283, i64 0, i64 %10
  %12 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %11, align 8
  %13 = call i32 @try_tempname_len(i8* %0, i32 %1, i8* nonnull %6, i32 (i8*, i8*)* %12, i64 6) #11
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6)
  ret i32 %13
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @try_tempname(i8*, i32, i8*, i32 (i8*, i8*)* nocapture) local_unnamed_addr #6 {
  %5 = tail call i32 @try_tempname_len(i8* %0, i32 %1, i8* %2, i32 (i8*, i8*)* %3, i64 6)
  ret i32 %5
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_safer(i32) local_unnamed_addr #6 {
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3) #11
  ret i32 %2
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @fd_safer(i32) local_unnamed_addr #6 {
  %2 = icmp ult i32 %0, 3
  br i1 %2, label %3, label %8

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @dup_safer(i32 %0) #11
  %5 = tail call i32* @__errno_location() #1
  %6 = load i32, i32* %5, align 4
  %7 = tail call i32 @close(i32 %0) #11
  store i32 %6, i32* %5, align 4
  br label %8

; <label>:8:                                      ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @utimecmp(i8*, %struct.stat* nocapture readonly, %struct.stat* nocapture readonly, i32) local_unnamed_addr #6 {
  %5 = alloca %struct.fs_res, align 8
  %6 = alloca [2 x %struct.timespec], align 16
  %7 = alloca %struct.stat, align 8
  %8 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 12, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 12, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = and i32 %3, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %254, label %20

; <label>:20:                                     ; preds = %4
  %21 = bitcast %struct.fs_res* %5 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %21) #11
  %22 = icmp eq i64 %9, %11
  %23 = icmp eq i32 %14, %17
  %24 = and i1 %22, %23
  br i1 %24, label %252, label %25

; <label>:25:                                     ; preds = %20
  %26 = add nsw i64 %11, -2
  %27 = icmp sgt i64 %9, %26
  br i1 %27, label %28, label %252

; <label>:28:                                     ; preds = %25
  %29 = add nsw i64 %9, -2
  %30 = icmp sgt i64 %11, %29
  br i1 %30, label %31, label %252

; <label>:31:                                     ; preds = %28
  %32 = load %struct.hash_table*, %struct.hash_table** @utimecmp.ht, align 8
  %33 = icmp eq %struct.hash_table* %32, null
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %31
  %35 = tail call %struct.hash_table* @hash_initialize(i64 16, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @dev_info_hash, i1 (i8*, i8*)* nonnull @dev_info_compare, void (i8*)* nonnull @free) #11
  store %struct.hash_table* %35, %struct.hash_table** @utimecmp.ht, align 8
  %36 = icmp eq %struct.hash_table* %35, null
  br i1 %36, label %75, label %37

; <label>:37:                                     ; preds = %31, %34
  %38 = phi %struct.hash_table* [ %32, %31 ], [ %35, %34 ]
  %39 = load %struct.fs_res*, %struct.fs_res** @utimecmp.new_dst_res, align 8
  %40 = icmp eq %struct.fs_res* %39, null
  br i1 %40, label %41, label %49

; <label>:41:                                     ; preds = %37
  %42 = tail call noalias i8* @malloc(i64 16) #11
  store i8* %42, i8** bitcast (%struct.fs_res** @utimecmp.new_dst_res to i8**), align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %65, label %44

; <label>:44:                                     ; preds = %41
  %45 = bitcast i8* %42 to %struct.fs_res*
  %46 = getelementptr inbounds i8, i8* %42, i64 8
  %47 = bitcast i8* %46 to i32*
  store i32 2000000000, i32* %47, align 8
  %48 = getelementptr inbounds i8, i8* %42, i64 12
  store i8 0, i8* %48, align 4
  br label %49

; <label>:49:                                     ; preds = %37, %44
  %50 = phi %struct.fs_res* [ %39, %37 ], [ %45, %44 ]
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.fs_res, %struct.fs_res* %50, i64 0, i32 0
  store i64 %52, i64* %53, align 8
  %54 = bitcast %struct.fs_res* %50 to i8*
  %55 = tail call i8* @hash_insert(%struct.hash_table* nonnull %38, i8* %54) #11
  %56 = bitcast i8* %55 to %struct.fs_res*
  %57 = icmp eq i8* %55, null
  br i1 %57, label %62, label %58

; <label>:58:                                     ; preds = %49
  %59 = load %struct.fs_res*, %struct.fs_res** @utimecmp.new_dst_res, align 8
  %60 = icmp eq %struct.fs_res* %56, %59
  br i1 %60, label %61, label %78

; <label>:61:                                     ; preds = %58
  store %struct.fs_res* null, %struct.fs_res** @utimecmp.new_dst_res, align 8
  br label %78

; <label>:62:                                     ; preds = %49
  %63 = load %struct.hash_table*, %struct.hash_table** @utimecmp.ht, align 8
  %64 = icmp eq %struct.hash_table* %63, null
  br i1 %64, label %72, label %65

; <label>:65:                                     ; preds = %41, %62
  %66 = phi %struct.hash_table* [ %63, %62 ], [ %38, %41 ]
  %67 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.fs_res, %struct.fs_res* %5, i64 0, i32 0
  store i64 %68, i64* %69, align 8
  %70 = call i8* @hash_lookup(%struct.hash_table* nonnull %66, i8* nonnull %21) #11
  %71 = bitcast i8* %70 to %struct.fs_res*
  br label %72

; <label>:72:                                     ; preds = %62, %65
  %73 = phi %struct.fs_res* [ %71, %65 ], [ %56, %62 ]
  %74 = icmp eq %struct.fs_res* %73, null
  br i1 %74, label %75, label %78

; <label>:75:                                     ; preds = %34, %72
  %76 = getelementptr inbounds %struct.fs_res, %struct.fs_res* %5, i64 0, i32 1
  store i32 2000000000, i32* %76, align 8
  %77 = getelementptr inbounds %struct.fs_res, %struct.fs_res* %5, i64 0, i32 2
  store i8 0, i8* %77, align 4
  br label %78

; <label>:78:                                     ; preds = %72, %75, %58, %61
  %79 = phi %struct.fs_res* [ %56, %61 ], [ %56, %58 ], [ %73, %72 ], [ %5, %75 ]
  %80 = getelementptr inbounds %struct.fs_res, %struct.fs_res* %79, i64 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.fs_res, %struct.fs_res* %79, i64 0, i32 2
  %83 = load i8, i8* %82, align 4
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %244

; <label>:85:                                     ; preds = %78
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 11, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 13, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 11, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 13, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = or i64 %87, %9
  %97 = or i64 %96, %89
  %98 = srem i32 %92, 10
  %99 = srem i32 %95, 10
  %100 = srem i32 %14, 10
  %101 = or i32 %98, %100
  %102 = or i32 %101, %99
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

; <label>:104:                                    ; preds = %85
  %105 = icmp sgt i32 %81, 10
  br i1 %105, label %106, label %135

; <label>:106:                                    ; preds = %104
  br label %108

; <label>:107:                                    ; preds = %85
  store i32 1, i32* %80, align 8
  br label %242

; <label>:108:                                    ; preds = %106, %129
  %109 = phi i32 [ %115, %129 ], [ %92, %106 ]
  %110 = phi i32 [ %114, %129 ], [ %95, %106 ]
  %111 = phi i32 [ %113, %129 ], [ %14, %106 ]
  %112 = phi i32 [ %130, %129 ], [ 10, %106 ]
  %113 = sdiv i32 %111, 10
  %114 = sdiv i32 %110, 10
  %115 = sdiv i32 %109, 10
  %116 = srem i32 %115, 10
  %117 = srem i32 %114, 10
  %118 = or i32 %117, %116
  %119 = srem i32 %113, 10
  %120 = or i32 %118, %119
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %132

; <label>:122:                                    ; preds = %108
  %123 = icmp eq i32 %112, 1000000000
  br i1 %123, label %124, label %129

; <label>:124:                                    ; preds = %122
  %125 = trunc i64 %97 to i32
  %126 = and i32 %125, 1
  %127 = xor i32 %126, 1
  %128 = shl nsw i32 1000000000, %127
  br label %135

; <label>:129:                                    ; preds = %122
  %130 = mul nsw i32 %112, 10
  %131 = icmp slt i32 %130, %81
  br i1 %131, label %108, label %132

; <label>:132:                                    ; preds = %129, %108
  %133 = phi i32 [ %130, %129 ], [ %112, %108 ]
  store i32 %133, i32* %80, align 8
  %134 = icmp sgt i32 %133, 1
  br i1 %134, label %137, label %242

; <label>:135:                                    ; preds = %104, %124
  %136 = phi i32 [ %128, %124 ], [ 10, %104 ]
  store i32 %136, i32* %80, align 8
  br label %137

; <label>:137:                                    ; preds = %135, %132
  %138 = phi i32 [ %133, %132 ], [ %136, %135 ]
  %139 = bitcast [2 x %struct.timespec]* %6 to i8*
  call void @llvm.lifetime.start(i64 32, i8* nonnull %139) #11
  %140 = bitcast %struct.stat* %7 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %140) #11
  %141 = icmp eq i32 %138, 2000000000
  %142 = zext i1 %141 to i64
  %143 = xor i64 %142, -1
  %144 = and i64 %11, %143
  %145 = icmp slt i64 %11, %9
  br i1 %145, label %239, label %146

; <label>:146:                                    ; preds = %137
  %147 = xor i1 %22, true
  %148 = icmp sgt i32 %17, %14
  %149 = or i1 %148, %147
  br i1 %149, label %150, label %239

; <label>:150:                                    ; preds = %146
  %151 = icmp slt i64 %9, %144
  br i1 %151, label %239, label %152

; <label>:152:                                    ; preds = %150
  %153 = icmp eq i64 %9, %144
  br i1 %153, label %154, label %158

; <label>:154:                                    ; preds = %152
  %155 = srem i32 %17, %138
  %156 = sub nsw i32 %17, %155
  %157 = icmp slt i32 %14, %156
  br i1 %157, label %239, label %158

; <label>:158:                                    ; preds = %154, %152
  %159 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %6, i64 0, i64 0, i32 0
  store i64 %87, i64* %159, align 16
  %160 = shl i64 %91, 32
  %161 = ashr exact i64 %160, 32
  %162 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %6, i64 0, i64 0, i32 1
  store i64 %161, i64* %162, align 8
  %163 = or i64 %142, %9
  %164 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %6, i64 0, i64 1, i32 0
  store i64 %163, i64* %164, align 16
  %165 = udiv i32 %138, 9
  %166 = add nsw i32 %165, %14
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %6, i64 0, i64 1, i32 1
  store i64 %167, i64* %168, align 8
  %169 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = and i32 %170, 61440
  %172 = icmp eq i32 %171, 40960
  %173 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %6, i64 0, i64 0
  br i1 %172, label %174, label %176

; <label>:174:                                    ; preds = %158
  %175 = call i32 @lutimens(i8* %0, %struct.timespec* nonnull %173) #11
  br label %178

; <label>:176:                                    ; preds = %158
  %177 = call i32 @utimens(i8* %0, %struct.timespec* nonnull %173) #11
  br label %178

; <label>:178:                                    ; preds = %176, %174
  %179 = phi i32 [ %175, %174 ], [ %177, %176 ]
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %239

; <label>:181:                                    ; preds = %178
  %182 = load i32, i32* %169, align 8
  %183 = and i32 %182, 61440
  %184 = icmp eq i32 %183, 40960
  br i1 %184, label %185, label %187

; <label>:185:                                    ; preds = %181
  %186 = call i32 @__lxstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %7) #11
  br label %189

; <label>:187:                                    ; preds = %181
  %188 = call i32 @__xstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %7) #11
  br label %189

; <label>:189:                                    ; preds = %187, %185
  %190 = phi i32 [ %186, %185 ], [ %188, %187 ]
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 12, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = xor i64 %193, %9
  %195 = or i64 %194, %191
  %196 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 12, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = shl i64 %13, 32
  %199 = ashr exact i64 %198, 32
  %200 = xor i64 %197, %199
  %201 = or i64 %195, %200
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %211, label %203

; <label>:203:                                    ; preds = %189
  store i64 %9, i64* %164, align 16
  store i64 %199, i64* %168, align 8
  %204 = load i32, i32* %169, align 8
  %205 = and i32 %204, 61440
  %206 = icmp eq i32 %205, 40960
  br i1 %206, label %207, label %209

; <label>:207:                                    ; preds = %203
  %208 = call i32 @lutimens(i8* %0, %struct.timespec* nonnull %173) #11
  br label %211

; <label>:209:                                    ; preds = %203
  %210 = call i32 @utimens(i8* %0, %struct.timespec* nonnull %173) #11
  br label %211

; <label>:211:                                    ; preds = %189, %207, %209
  %212 = icmp eq i32 %190, 0
  br i1 %212, label %213, label %241

; <label>:213:                                    ; preds = %211
  %214 = load i64, i64* %192, align 8
  %215 = and i64 %214, 1
  %216 = sub nsw i64 0, %215
  %217 = and i64 %216, 1000000000
  %218 = load i64, i64* %196, align 8
  %219 = add nsw i64 %217, %218
  %220 = trunc i64 %219 to i32
  %221 = srem i32 %220, 10
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %237

; <label>:223:                                    ; preds = %213
  br label %224

; <label>:224:                                    ; preds = %223, %231
  %225 = phi i32 [ %232, %231 ], [ %220, %223 ]
  %226 = phi i32 [ %229, %231 ], [ 1, %223 ]
  %227 = icmp eq i32 %226, 1000000000
  br i1 %227, label %235, label %228

; <label>:228:                                    ; preds = %224
  %229 = mul nsw i32 %226, 10
  %230 = icmp eq i32 %229, %138
  br i1 %230, label %235, label %231

; <label>:231:                                    ; preds = %228
  %232 = sdiv i32 %225, 10
  %233 = srem i32 %232, 10
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %224, label %235

; <label>:235:                                    ; preds = %224, %228, %231
  %236 = phi i32 [ 2000000000, %224 ], [ %138, %228 ], [ %229, %231 ]
  br label %237

; <label>:237:                                    ; preds = %235, %213
  %238 = phi i32 [ 1, %213 ], [ %236, %235 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %140) #11
  call void @llvm.lifetime.end(i64 32, i8* nonnull %139) #11
  br label %242

; <label>:239:                                    ; preds = %178, %146, %137, %154, %150
  %240 = phi i32 [ -2, %178 ], [ -1, %150 ], [ -1, %154 ], [ 1, %137 ], [ 1, %146 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %140) #11
  call void @llvm.lifetime.end(i64 32, i8* nonnull %139) #11
  br label %252

; <label>:241:                                    ; preds = %211
  call void @llvm.lifetime.end(i64 144, i8* nonnull %140) #11
  call void @llvm.lifetime.end(i64 32, i8* nonnull %139) #11
  call void @llvm.lifetime.end(i64 16, i8* nonnull %21) #11
  br label %265

; <label>:242:                                    ; preds = %132, %107, %237
  %243 = phi i32 [ %133, %132 ], [ 1, %107 ], [ %238, %237 ]
  store i32 %243, i32* %80, align 8
  store i8 1, i8* %82, align 4
  br label %244

; <label>:244:                                    ; preds = %78, %242
  %245 = phi i32 [ %81, %78 ], [ %243, %242 ]
  %246 = icmp eq i32 %245, 2000000000
  %247 = zext i1 %246 to i64
  %248 = xor i64 %247, -1
  %249 = and i64 %11, %248
  %250 = srem i32 %17, %245
  %251 = sub nsw i32 %17, %250
  call void @llvm.lifetime.end(i64 16, i8* nonnull %21) #11
  br label %254

; <label>:252:                                    ; preds = %20, %25, %28, %239
  %253 = phi i32 [ %240, %239 ], [ 1, %28 ], [ -1, %25 ], [ 0, %20 ]
  call void @llvm.lifetime.end(i64 16, i8* nonnull %21) #11
  br label %265

; <label>:254:                                    ; preds = %244, %4
  %255 = phi i32 [ %17, %4 ], [ %251, %244 ]
  %256 = phi i64 [ %11, %4 ], [ %249, %244 ]
  %257 = icmp slt i64 %9, %256
  br i1 %257, label %265, label %258

; <label>:258:                                    ; preds = %254
  %259 = icmp sgt i64 %9, %256
  br i1 %259, label %265, label %260

; <label>:260:                                    ; preds = %258
  %261 = icmp slt i32 %14, %255
  br i1 %261, label %265, label %262

; <label>:262:                                    ; preds = %260
  %263 = icmp sgt i32 %14, %255
  %264 = zext i1 %263 to i32
  br label %265

; <label>:265:                                    ; preds = %241, %252, %254, %262, %260, %258
  %266 = phi i32 [ -2, %241 ], [ -1, %254 ], [ 1, %258 ], [ %264, %262 ], [ -1, %260 ], [ %253, %252 ]
  ret i32 %266
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i64 @dev_info_hash(i8* nocapture readonly, i64) #12 {
  %3 = bitcast i8* %0 to i64*
  %4 = load i64, i64* %3, align 8
  %5 = urem i64 %4, %1
  ret i64 %5
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal zeroext i1 @dev_info_compare(i8* nocapture readonly, i8* nocapture readonly) #12 {
  %3 = bitcast i8* %0 to i64*
  %4 = load i64, i64* %3, align 8
  %5 = bitcast i8* %1 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %4, %6
  ret i1 %7
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define i32 @lutimensat(i32, i8*, %struct.timespec*) local_unnamed_addr #9 {
  %4 = tail call i32 @utimensat(i32 %0, i8* %1, %struct.timespec* %2, i32 256) #11
  ret i32 %4
}

; Function Attrs: nounwind
declare i32 @utimensat(i32, i8*, %struct.timespec*, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @fdutimens(i32, i8*, %struct.timespec* readonly) local_unnamed_addr #6 {
  %4 = alloca [2 x %struct.timespec], align 16
  %5 = alloca %struct.stat, align 8
  %6 = alloca [2 x %struct.timespec], align 16
  %7 = alloca [2 x %struct.timespec], align 16
  %8 = bitcast [2 x %struct.timespec]* %4 to i8*
  call void @llvm.lifetime.start(i64 32, i8* nonnull %8) #11
  %9 = icmp ne %struct.timespec* %2, null
  %10 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %4, i64 0, i64 0
  %11 = select i1 %9, %struct.timespec* %10, %struct.timespec* null
  %12 = bitcast %struct.stat* %5 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %12) #11
  br i1 %9, label %13, label %54

; <label>:13:                                     ; preds = %3
  %14 = bitcast %struct.timespec* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %8, i8* %14, i64 16, i32 8, i1 false)
  %15 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %4, i64 0, i64 1
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 1
  %17 = bitcast %struct.timespec* %15 to i8*
  %18 = bitcast %struct.timespec* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 16, i32 8, i1 false)
  %19 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i64 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = and i64 %20, -2
  %22 = icmp eq i64 %21, 1073741822
  %23 = icmp ult i64 %20, 1000000000
  %24 = or i1 %23, %22
  br i1 %24, label %25, label %32

; <label>:25:                                     ; preds = %13
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i64 1, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = and i64 %27, -2
  %29 = icmp eq i64 %28, 1073741822
  %30 = icmp ult i64 %27, 1000000000
  %31 = or i1 %30, %29
  br i1 %31, label %34, label %32

; <label>:32:                                     ; preds = %13, %25
  %33 = tail call i32* @__errno_location() #1
  store i32 22, i32* %33, align 4
  br label %267

; <label>:34:                                     ; preds = %25
  br i1 %22, label %35, label %39

; <label>:35:                                     ; preds = %34
  %36 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i64 0, i32 0
  store i64 0, i64* %36, align 16
  %37 = icmp eq i64 %20, 1073741822
  %38 = zext i1 %37 to i32
  br label %39

; <label>:39:                                     ; preds = %35, %34
  %40 = phi i32 [ 0, %34 ], [ 1, %35 ]
  %41 = phi i32 [ 0, %34 ], [ %38, %35 ]
  br i1 %29, label %42, label %47

; <label>:42:                                     ; preds = %39
  %43 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i64 1, i32 0
  store i64 0, i64* %43, align 16
  %44 = icmp eq i64 %27, 1073741822
  %45 = zext i1 %44 to i32
  %46 = add nuw nsw i32 %41, %45
  br label %47

; <label>:47:                                     ; preds = %39, %42
  %48 = phi i32 [ %40, %39 ], [ 1, %42 ]
  %49 = phi i32 [ %41, %39 ], [ %46, %42 ]
  %50 = icmp eq i32 %49, 1
  %51 = zext i1 %50 to i32
  %52 = add nsw i32 %51, %48
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %267, label %54

; <label>:54:                                     ; preds = %3, %47
  %55 = phi i32 [ %52, %47 ], [ 0, %3 ]
  %56 = icmp sgt i32 %0, -1
  %57 = icmp ne i8* %1, null
  %58 = or i1 %56, %57
  br i1 %58, label %61, label %59

; <label>:59:                                     ; preds = %54
  %60 = tail call i32* @__errno_location() #1
  store i32 9, i32* %60, align 4
  br label %267

; <label>:61:                                     ; preds = %54
  %62 = load i32, i32* @utimensat_works_really, align 4
  %63 = icmp sgt i32 %62, -1
  br i1 %63, label %64, label %129

; <label>:64:                                     ; preds = %61
  %65 = icmp eq i32 %55, 2
  br i1 %65, label %66, label %97

; <label>:66:                                     ; preds = %64
  %67 = icmp slt i32 %0, 0
  br i1 %67, label %68, label %71

; <label>:68:                                     ; preds = %66
  %69 = call i32 @__xstat(i32 1, i8* nonnull %1, %struct.stat* nonnull %5) #11
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %267

; <label>:71:                                     ; preds = %66
  %72 = call i32 @__fxstat(i32 1, i32 %0, %struct.stat* nonnull %5) #11
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %267

; <label>:74:                                     ; preds = %68, %71
  %75 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i64 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 1073741822
  br i1 %77, label %78, label %82

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 11, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 11, i32 1
  br label %90

; <label>:82:                                     ; preds = %74
  %83 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i64 1, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 1073741822
  br i1 %85, label %86, label %97

; <label>:86:                                     ; preds = %82
  %87 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 1
  br label %90

; <label>:90:                                     ; preds = %78, %86
  %91 = phi i64* [ %81, %78 ], [ %89, %86 ]
  %92 = phi i64 [ %80, %78 ], [ %88, %86 ]
  %93 = phi i64 [ 0, %78 ], [ 1, %86 ]
  %94 = load i64, i64* %91, align 8
  %95 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i64 %93, i32 0
  store i64 %92, i64* %95, align 16
  %96 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i64 %93, i32 1
  store i64 %94, i64* %96, align 8
  br label %97

; <label>:97:                                     ; preds = %82, %90, %64
  %98 = phi i32 [ %55, %64 ], [ 3, %90 ], [ 3, %82 ]
  %99 = icmp slt i32 %0, 0
  br i1 %99, label %100, label %114

; <label>:100:                                    ; preds = %97
  %101 = call i32 @utimensat(i32 -100, i8* %1, %struct.timespec* %11, i32 0) #11
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %105

; <label>:103:                                    ; preds = %100
  %104 = tail call i32* @__errno_location() #1
  store i32 38, i32* %104, align 4
  br label %109

; <label>:105:                                    ; preds = %100
  %106 = icmp eq i32 %101, 0
  br i1 %106, label %113, label %107

; <label>:107:                                    ; preds = %105
  %108 = tail call i32* @__errno_location() #1
  br label %109

; <label>:109:                                    ; preds = %107, %103
  %110 = phi i32* [ %108, %107 ], [ %104, %103 ]
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 38
  br i1 %112, label %114, label %113

; <label>:113:                                    ; preds = %109, %105
  store i32 1, i32* @utimensat_works_really, align 4
  br label %267

; <label>:114:                                    ; preds = %109, %97
  br i1 %56, label %115, label %129

; <label>:115:                                    ; preds = %114
  %116 = call i32 @futimens(i32 %0, %struct.timespec* %11) #11
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %120

; <label>:118:                                    ; preds = %115
  %119 = tail call i32* @__errno_location() #1
  store i32 38, i32* %119, align 4
  br label %124

; <label>:120:                                    ; preds = %115
  %121 = icmp eq i32 %116, 0
  br i1 %121, label %128, label %122

; <label>:122:                                    ; preds = %120
  %123 = tail call i32* @__errno_location() #1
  br label %124

; <label>:124:                                    ; preds = %122, %118
  %125 = phi i32* [ %123, %122 ], [ %119, %118 ]
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 38
  br i1 %127, label %129, label %128

; <label>:128:                                    ; preds = %124, %120
  store i32 1, i32* @utimensat_works_really, align 4
  br label %267

; <label>:129:                                    ; preds = %124, %114, %61
  %130 = phi i32 [ %55, %61 ], [ %98, %124 ], [ %98, %114 ]
  store i32 -1, i32* @utimensat_works_really, align 4
  store i32 -1, i32* @lutimensat_works_really, align 4
  switch i32 %130, label %131 [
    i32 0, label %177
    i32 3, label %139
  ]

; <label>:131:                                    ; preds = %129
  %132 = icmp slt i32 %0, 0
  br i1 %132, label %133, label %136

; <label>:133:                                    ; preds = %131
  %134 = call i32 @__xstat(i32 1, i8* nonnull %1, %struct.stat* nonnull %5) #11
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %139, label %267

; <label>:136:                                    ; preds = %131
  %137 = call i32 @__fxstat(i32 1, i32 %0, %struct.stat* nonnull %5) #11
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %267

; <label>:139:                                    ; preds = %129, %133, %136
  %140 = icmp eq %struct.timespec* %11, null
  br i1 %140, label %141, label %143

; <label>:141:                                    ; preds = %139
  %142 = bitcast [2 x %struct.timespec]* %6 to i8*
  call void @llvm.lifetime.start(i64 32, i8* nonnull %142) #11
  br label %197

; <label>:143:                                    ; preds = %139
  %144 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i64 0, i32 1
  %145 = load i64, i64* %144, align 8
  switch i64 %145, label %146 [
    i64 1073741822, label %148
    i64 1073741823, label %152
  ]

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i64 1, i32 1
  br label %164

; <label>:148:                                    ; preds = %143
  %149 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i64 1, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, 1073741822
  br i1 %151, label %267, label %158

; <label>:152:                                    ; preds = %143
  %153 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i64 1, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %154, 1073741823
  br i1 %155, label %156, label %163

; <label>:156:                                    ; preds = %152
  %157 = bitcast [2 x %struct.timespec]* %6 to i8*
  call void @llvm.lifetime.start(i64 32, i8* nonnull %157) #11
  br label %197

; <label>:158:                                    ; preds = %148
  %159 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 11, i32 0
  %160 = bitcast i64* %159 to <2 x i64>*
  %161 = load <2 x i64>, <2 x i64>* %160, align 8
  %162 = bitcast %struct.timespec* %11 to <2 x i64>*
  store <2 x i64> %161, <2 x i64>* %162, align 16
  br label %164

; <label>:163:                                    ; preds = %152
  call void @gettime(%struct.timespec* nonnull %11) #11
  br label %164

; <label>:164:                                    ; preds = %146, %163, %158
  %165 = phi i64* [ %147, %146 ], [ %153, %163 ], [ %149, %158 ]
  %166 = load i64, i64* %165, align 8
  switch i64 %166, label %175 [
    i64 1073741822, label %167
    i64 1073741823, label %173
  ]

; <label>:167:                                    ; preds = %164
  %168 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i64 1, i32 0
  store i64 %169, i64* %172, align 16
  store i64 %171, i64* %165, align 8
  br label %175

; <label>:173:                                    ; preds = %164
  %174 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i64 1
  call void @gettime(%struct.timespec* %174) #11
  br label %175

; <label>:175:                                    ; preds = %167, %173, %164
  %176 = bitcast [2 x %struct.timespec]* %6 to i8*
  call void @llvm.lifetime.start(i64 32, i8* nonnull %176) #11
  br label %180

; <label>:177:                                    ; preds = %129
  %178 = bitcast [2 x %struct.timespec]* %6 to i8*
  call void @llvm.lifetime.start(i64 32, i8* nonnull %178) #11
  %179 = icmp eq %struct.timespec* %11, null
  br i1 %179, label %197, label %180

; <label>:180:                                    ; preds = %175, %177
  %181 = phi i8* [ %176, %175 ], [ %178, %177 ]
  %182 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %4, i64 0, i64 0, i32 0
  %183 = load i64, i64* %182, align 16
  %184 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %6, i64 0, i64 0, i32 0
  store i64 %183, i64* %184, align 16
  %185 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %4, i64 0, i64 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = sdiv i64 %186, 1000
  %188 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %6, i64 0, i64 0, i32 1
  store i64 %187, i64* %188, align 8
  %189 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %4, i64 0, i64 1, i32 0
  %190 = load i64, i64* %189, align 16
  %191 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %6, i64 0, i64 1, i32 0
  store i64 %190, i64* %191, align 16
  %192 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %4, i64 0, i64 1, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = sdiv i64 %193, 1000
  %195 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %6, i64 0, i64 1, i32 1
  store i64 %194, i64* %195, align 8
  %196 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %6, i64 0, i64 0
  br label %197

; <label>:197:                                    ; preds = %156, %141, %177, %180
  %198 = phi i8* [ %181, %180 ], [ %178, %177 ], [ %142, %141 ], [ %157, %156 ]
  %199 = phi %struct.timespec* [ %196, %180 ], [ null, %177 ], [ null, %141 ], [ null, %156 ]
  %200 = icmp slt i32 %0, 0
  br i1 %200, label %201, label %203

; <label>:201:                                    ; preds = %197
  %202 = call i32 @futimesat(i32 -100, i8* %1, %struct.timespec* %199) #11
  br label %265

; <label>:203:                                    ; preds = %197
  %204 = call i32 @futimesat(i32 %0, i8* null, %struct.timespec* %199) #11
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %262

; <label>:206:                                    ; preds = %203
  %207 = icmp eq %struct.timespec* %199, null
  br i1 %207, label %265, label %208

; <label>:208:                                    ; preds = %206
  %209 = getelementptr inbounds %struct.timespec, %struct.timespec* %199, i64 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = icmp sgt i64 %210, 499999
  %212 = getelementptr inbounds %struct.timespec, %struct.timespec* %199, i64 1
  %213 = getelementptr inbounds %struct.timespec, %struct.timespec* %199, i64 1, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = icmp sgt i64 %214, 499999
  %216 = or i1 %211, %215
  br i1 %216, label %217, label %265

; <label>:217:                                    ; preds = %208
  %218 = call i32 @__fxstat(i32 1, i32 %0, %struct.stat* nonnull %5) #11
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %265

; <label>:220:                                    ; preds = %217
  %221 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 11, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds %struct.timespec, %struct.timespec* %199, i64 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = sub nsw i64 %222, %224
  %226 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds %struct.timespec, %struct.timespec* %212, i64 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = sub nsw i64 %227, %229
  %231 = bitcast [2 x %struct.timespec]* %7 to i8*
  call void @llvm.lifetime.start(i64 32, i8* nonnull %231) #11
  %232 = bitcast %struct.timespec* %199 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %231, i8* %232, i64 16, i32 8, i1 false)
  %233 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 1
  %234 = bitcast %struct.timespec* %233 to i8*
  %235 = bitcast %struct.timespec* %212 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %234, i8* %235, i64 16, i32 8, i1 false)
  %236 = icmp eq i64 %225, 1
  %237 = and i1 %211, %236
  br i1 %237, label %238, label %245

; <label>:238:                                    ; preds = %220
  %239 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 11, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %245

; <label>:242:                                    ; preds = %238
  %243 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %244 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0, i32 1
  store i64 0, i64* %244, align 8
  br label %245

; <label>:245:                                    ; preds = %242, %238, %220
  %246 = phi %struct.timespec* [ %243, %242 ], [ null, %238 ], [ null, %220 ]
  %247 = icmp eq i64 %230, 1
  %248 = and i1 %215, %247
  br i1 %248, label %249, label %256

; <label>:249:                                    ; preds = %245
  %250 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 12, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %256

; <label>:253:                                    ; preds = %249
  %254 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 0
  %255 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %7, i64 0, i64 1, i32 1
  store i64 0, i64* %255, align 8
  br label %258

; <label>:256:                                    ; preds = %249, %245
  %257 = icmp eq %struct.timespec* %246, null
  br i1 %257, label %261, label %258

; <label>:258:                                    ; preds = %253, %256
  %259 = phi %struct.timespec* [ %254, %253 ], [ %246, %256 ]
  %260 = call i32 @futimesat(i32 %0, i8* null, %struct.timespec* nonnull %259) #11
  br label %261

; <label>:261:                                    ; preds = %256, %258
  call void @llvm.lifetime.end(i64 32, i8* nonnull %231) #11
  br label %265

; <label>:262:                                    ; preds = %203
  br i1 %57, label %263, label %265

; <label>:263:                                    ; preds = %262
  %264 = call i32 @utimes(i8* nonnull %1, %struct.timespec* %199) #11
  br label %265

; <label>:265:                                    ; preds = %262, %206, %261, %217, %208, %263, %201
  %266 = phi i32 [ %202, %201 ], [ %264, %263 ], [ 0, %208 ], [ 0, %217 ], [ 0, %261 ], [ 0, %206 ], [ -1, %262 ]
  call void @llvm.lifetime.end(i64 32, i8* %198) #11
  br label %267

; <label>:267:                                    ; preds = %71, %68, %128, %113, %148, %32, %136, %133, %47, %265, %59
  %268 = phi i32 [ %266, %265 ], [ -1, %59 ], [ -1, %47 ], [ -1, %133 ], [ -1, %136 ], [ -1, %32 ], [ 0, %148 ], [ -1, %71 ], [ -1, %68 ], [ %116, %128 ], [ %101, %113 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %12) #11
  call void @llvm.lifetime.end(i64 32, i8* nonnull %8) #11
  ret i32 %268
}

; Function Attrs: nounwind
declare i32 @futimens(i32, %struct.timespec*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @futimesat(i32, i8*, %struct.timespec*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @utimes(i8* nocapture readonly, %struct.timespec* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @utimens(i8*, %struct.timespec* readonly) local_unnamed_addr #6 {
  %3 = tail call i32 @fdutimens(i32 -1, i8* %0, %struct.timespec* %1)
  ret i32 %3
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @lutimens(i8*, %struct.timespec* readonly) local_unnamed_addr #6 {
  %3 = alloca [2 x %struct.timespec], align 16
  %4 = alloca %struct.stat, align 8
  %5 = bitcast [2 x %struct.timespec]* %3 to i8*
  call void @llvm.lifetime.start(i64 32, i8* nonnull %5) #11
  %6 = icmp ne %struct.timespec* %1, null
  %7 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %3, i64 0, i64 0
  %8 = select i1 %6, %struct.timespec* %7, %struct.timespec* null
  %9 = bitcast %struct.stat* %4 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %9) #11
  br i1 %6, label %10, label %51

; <label>:10:                                     ; preds = %2
  %11 = bitcast %struct.timespec* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %5, i8* %11, i64 16, i32 8, i1 false)
  %12 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %3, i64 0, i64 1
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %1, i64 1
  %14 = bitcast %struct.timespec* %12 to i8*
  %15 = bitcast %struct.timespec* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 16, i32 8, i1 false)
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i64 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = and i64 %17, -2
  %19 = icmp eq i64 %18, 1073741822
  %20 = icmp ult i64 %17, 1000000000
  %21 = or i1 %20, %19
  br i1 %21, label %22, label %29

; <label>:22:                                     ; preds = %10
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i64 1, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %24, -2
  %26 = icmp eq i64 %25, 1073741822
  %27 = icmp ult i64 %24, 1000000000
  %28 = or i1 %27, %26
  br i1 %28, label %31, label %29

; <label>:29:                                     ; preds = %10, %22
  %30 = tail call i32* @__errno_location() #1
  store i32 22, i32* %30, align 4
  br label %148

; <label>:31:                                     ; preds = %22
  br i1 %19, label %32, label %36

; <label>:32:                                     ; preds = %31
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i64 0, i32 0
  store i64 0, i64* %33, align 16
  %34 = icmp eq i64 %17, 1073741822
  %35 = zext i1 %34 to i32
  br label %36

; <label>:36:                                     ; preds = %32, %31
  %37 = phi i32 [ 0, %31 ], [ 1, %32 ]
  %38 = phi i32 [ 0, %31 ], [ %35, %32 ]
  br i1 %26, label %39, label %44

; <label>:39:                                     ; preds = %36
  %40 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i64 1, i32 0
  store i64 0, i64* %40, align 16
  %41 = icmp eq i64 %24, 1073741822
  %42 = zext i1 %41 to i32
  %43 = add nuw nsw i32 %38, %42
  br label %44

; <label>:44:                                     ; preds = %36, %39
  %45 = phi i32 [ %37, %36 ], [ 1, %39 ]
  %46 = phi i32 [ %38, %36 ], [ %43, %39 ]
  %47 = icmp eq i32 %46, 1
  %48 = zext i1 %47 to i32
  %49 = add nsw i32 %48, %45
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %148, label %51

; <label>:51:                                     ; preds = %2, %44
  %52 = phi i32 [ %49, %44 ], [ 0, %2 ]
  %53 = load i32, i32* @lutimensat_works_really, align 4
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %55, label %98

; <label>:55:                                     ; preds = %51
  %56 = icmp eq i32 %52, 2
  br i1 %56, label %57, label %83

; <label>:57:                                     ; preds = %55
  %58 = call i32 @__lxstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %4) #11
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %148

; <label>:60:                                     ; preds = %57
  %61 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i64 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 1073741822
  br i1 %63, label %64, label %68

; <label>:64:                                     ; preds = %60
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 11, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 11, i32 1
  br label %76

; <label>:68:                                     ; preds = %60
  %69 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i64 1, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 1073741822
  br i1 %71, label %72, label %83

; <label>:72:                                     ; preds = %68
  %73 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 1
  br label %76

; <label>:76:                                     ; preds = %64, %72
  %77 = phi i64* [ %67, %64 ], [ %75, %72 ]
  %78 = phi i64 [ %66, %64 ], [ %74, %72 ]
  %79 = phi i64 [ 0, %64 ], [ 1, %72 ]
  %80 = load i64, i64* %77, align 8
  %81 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i64 %79, i32 0
  store i64 %78, i64* %81, align 16
  %82 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i64 %79, i32 1
  store i64 %80, i64* %82, align 8
  br label %83

; <label>:83:                                     ; preds = %68, %76, %55
  %84 = phi i32 [ %52, %55 ], [ 3, %76 ], [ 3, %68 ]
  %85 = call i32 @utimensat(i32 -100, i8* %0, %struct.timespec* %8, i32 256) #11
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %89

; <label>:87:                                     ; preds = %83
  %88 = tail call i32* @__errno_location() #1
  store i32 38, i32* %88, align 4
  br label %93

; <label>:89:                                     ; preds = %83
  %90 = icmp eq i32 %85, 0
  br i1 %90, label %97, label %91

; <label>:91:                                     ; preds = %89
  %92 = tail call i32* @__errno_location() #1
  br label %93

; <label>:93:                                     ; preds = %91, %87
  %94 = phi i32* [ %92, %91 ], [ %88, %87 ]
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 38
  br i1 %96, label %98, label %97

; <label>:97:                                     ; preds = %93, %89
  store i32 1, i32* @utimensat_works_really, align 4
  store i32 1, i32* @lutimensat_works_really, align 4
  br label %148

; <label>:98:                                     ; preds = %93, %51
  %99 = phi i32 [ %52, %51 ], [ %84, %93 ]
  store i32 -1, i32* @lutimensat_works_really, align 4
  switch i32 %99, label %100 [
    i32 0, label %135
    i32 3, label %103
  ]

; <label>:100:                                    ; preds = %98
  %101 = call i32 @__lxstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %4) #11
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %148

; <label>:103:                                    ; preds = %98, %100
  %104 = icmp eq %struct.timespec* %8, null
  br i1 %104, label %138, label %105

; <label>:105:                                    ; preds = %103
  %106 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i64 0, i32 1
  %107 = load i64, i64* %106, align 8
  switch i64 %107, label %108 [
    i64 1073741822, label %110
    i64 1073741823, label %114
  ]

; <label>:108:                                    ; preds = %105
  %109 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i64 1, i32 1
  br label %124

; <label>:110:                                    ; preds = %105
  %111 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i64 1, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 1073741822
  br i1 %113, label %148, label %118

; <label>:114:                                    ; preds = %105
  %115 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i64 1, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 1073741823
  br i1 %117, label %138, label %123

; <label>:118:                                    ; preds = %110
  %119 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 11, i32 0
  %120 = bitcast i64* %119 to <2 x i64>*
  %121 = load <2 x i64>, <2 x i64>* %120, align 8
  %122 = bitcast %struct.timespec* %8 to <2 x i64>*
  store <2 x i64> %121, <2 x i64>* %122, align 16
  br label %124

; <label>:123:                                    ; preds = %114
  call void @gettime(%struct.timespec* nonnull %8) #11
  br label %124

; <label>:124:                                    ; preds = %108, %123, %118
  %125 = phi i64* [ %109, %108 ], [ %115, %123 ], [ %111, %118 ]
  %126 = load i64, i64* %125, align 8
  switch i64 %126, label %138 [
    i64 1073741822, label %127
    i64 1073741823, label %133
  ]

; <label>:127:                                    ; preds = %124
  %128 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 12, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i64 1, i32 0
  store i64 %129, i64* %132, align 16
  store i64 %131, i64* %125, align 8
  br label %138

; <label>:133:                                    ; preds = %124
  %134 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i64 1
  call void @gettime(%struct.timespec* %134) #11
  br label %138

; <label>:135:                                    ; preds = %98
  %136 = call i32 @__lxstat(i32 1, i8* nonnull %0, %struct.stat* nonnull %4) #11
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %148

; <label>:138:                                    ; preds = %114, %127, %133, %124, %103, %135
  %139 = phi %struct.timespec* [ %8, %135 ], [ null, %103 ], [ null, %114 ], [ %7, %127 ], [ %7, %133 ], [ %7, %124 ]
  %140 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, 61440
  %143 = icmp eq i32 %142, 40960
  br i1 %143, label %146, label %144

; <label>:144:                                    ; preds = %138
  %145 = call i32 @fdutimens(i32 -1, i8* %0, %struct.timespec* %139)
  br label %148

; <label>:146:                                    ; preds = %138
  %147 = tail call i32* @__errno_location() #1
  store i32 38, i32* %147, align 4
  br label %148

; <label>:148:                                    ; preds = %57, %97, %110, %29, %135, %100, %44, %146, %144
  %149 = phi i32 [ -1, %146 ], [ %145, %144 ], [ -1, %44 ], [ -1, %100 ], [ -1, %135 ], [ -1, %29 ], [ 0, %110 ], [ -1, %57 ], [ %85, %97 ]
  call void @llvm.lifetime.end(i64 144, i8* nonnull %9) #11
  call void @llvm.lifetime.end(i64 32, i8* nonnull %5) #11
  ret i32 %149
}

; Function Attrs: nounwind sspstrong uwtable
define void @verror(i32, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #6 {
  tail call void @verror_at_line(i32 %0, i32 %1, i8* null, i32 0, i8* %2, %struct.__va_list_tag* %3)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @verror_at_line(i32, i32, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #6 {
  %7 = tail call i8* @xvasprintf(i8* %4, %struct.__va_list_tag* %5) #11
  %8 = icmp eq i8* %7, null
  br i1 %8, label %13, label %9

; <label>:9:                                      ; preds = %6
  %10 = icmp eq i8* %2, null
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %9
  tail call void (i32, i32, i8*, i32, i8*, ...) @error_at_line(i32 %0, i32 %1, i8* nonnull %2, i32 %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.298, i64 0, i64 0), i8* nonnull %7) #11
  br label %17

; <label>:12:                                     ; preds = %9
  tail call void (i32, i32, i8*, ...) @error(i32 %0, i32 %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.298, i64 0, i64 0), i8* nonnull %7) #11
  br label %17

; <label>:13:                                     ; preds = %6
  %14 = tail call i32* @__errno_location() #1
  %15 = load i32, i32* %14, align 4
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.299, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %15, i8* %16) #11
  tail call void @abort() #15
  unreachable

; <label>:17:                                     ; preds = %11, %12
  tail call void @free(i8* nonnull %7) #11
  ret void
}

declare void @error_at_line(i32, i32, i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #6 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.300, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.301, i64 0, i64 0), i8* %2, i8* %3) #11
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.302, i64 0, i64 0), i32 5) #11
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2017) #11
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.3.303, i64 0, i64 0), i32 5) #11
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0) #11
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
  ]

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15
  unreachable

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.304, i64 0, i64 0), i32 5) #11
  %20 = load i8*, i8** %4, align 8
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11
  br label %146

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.305, i64 0, i64 0), i32 5) #11
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8*, i8** %4, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11
  br label %146

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.306, i64 0, i64 0), i32 5) #11
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %4, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %4, i64 2
  %34 = load i8*, i8** %33, align 8
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11
  br label %146

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.307, i64 0, i64 0), i32 5) #11
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8*, i8** %4, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %4, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %4, i64 3
  %44 = load i8*, i8** %43, align 8
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11
  br label %146

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.308, i64 0, i64 0), i32 5) #11
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8*, i8** %4, i64 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %4, i64 2
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %4, i64 3
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %4, i64 4
  %56 = load i8*, i8** %55, align 8
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11
  br label %146

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.309, i64 0, i64 0), i32 5) #11
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8*, i8** %4, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %4, i64 2
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %4, i64 3
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %4, i64 4
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %4, i64 5
  %70 = load i8*, i8** %69, align 8
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11
  br label %146

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.310, i64 0, i64 0), i32 5) #11
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8*, i8** %4, i64 1
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %4, i64 2
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %4, i64 3
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %4, i64 4
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %4, i64 5
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %4, i64 6
  %86 = load i8*, i8** %85, align 8
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11
  br label %146

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.311, i64 0, i64 0), i32 5) #11
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8*, i8** %4, i64 1
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %4, i64 2
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8*, i8** %4, i64 3
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %4, i64 4
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %4, i64 5
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8*, i8** %4, i64 6
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %4, i64 7
  %104 = load i8*, i8** %103, align 8
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11
  br label %146

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.312, i64 0, i64 0), i32 5) #11
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8*, i8** %4, i64 1
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %4, i64 2
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8*, i8** %4, i64 3
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8*, i8** %4, i64 4
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %4, i64 5
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8*, i8** %4, i64 6
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8*, i8** %4, i64 7
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8*, i8** %4, i64 8
  %124 = load i8*, i8** %123, align 8
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11
  br label %146

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.313, i64 0, i64 0), i32 5) #11
  %128 = load i8*, i8** %4, align 8
  %129 = getelementptr inbounds i8*, i8** %4, i64 1
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8*, i8** %4, i64 2
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds i8*, i8** %4, i64 3
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds i8*, i8** %4, i64 4
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8*, i8** %4, i64 5
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8*, i8** %4, i64 6
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds i8*, i8** %4, i64 7
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8*, i8** %4, i64 8
  %144 = load i8*, i8** %143, align 8
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11
  br label %146

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #6 {
  br label %6

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  %11 = add i64 %7, 1
  br i1 %10, label %12, label %6

; <label>:12:                                     ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #6 {
  %6 = alloca [10 x i8*], align 16
  %7 = bitcast [10 x i8*]* %6 to i8*
  call void @llvm.lifetime.start(i64 80, i8* nonnull %7) #11
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %11 = load i32, i32* %8, align 8
  %12 = icmp ult i32 %11, 41
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8
  %15 = sext i32 %11 to i64
  %16 = getelementptr i8, i8* %14, i64 %15
  %17 = add i32 %11, 8
  store i32 %17, i32* %8, align 8
  br label %21

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr i8, i8* %19, i64 8
  store i8* %20, i8** %10, align 8
  br label %21

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0
  store i8* %25, i8** %26, align 16
  %27 = icmp eq i8* %25, null
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %21
  %29 = icmp ult i32 %22, 41
  br i1 %29, label %35, label %32

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ]
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31)
  call void @llvm.lifetime.end(i64 80, i8* nonnull %7) #11
  ret void

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr i8, i8* %33, i64 8
  store i8* %34, i8** %10, align 8
  br label %40

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8
  %37 = sext i32 %22 to i64
  %38 = getelementptr i8, i8* %36, i64 %37
  %39 = add i32 %22, 8
  store i32 %39, i32* %8, align 8
  br label %40

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1
  store i8* %44, i8** %45, align 8
  %46 = icmp eq i8* %44, null
  br i1 %46, label %30, label %47

; <label>:47:                                     ; preds = %40
  %48 = icmp ult i32 %41, 41
  br i1 %48, label %52, label %49

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8
  %51 = getelementptr i8, i8* %50, i64 8
  store i8* %51, i8** %10, align 8
  br label %57

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8
  %54 = sext i32 %41 to i64
  %55 = getelementptr i8, i8* %53, i64 %54
  %56 = add i32 %41, 8
  store i32 %56, i32* %8, align 8
  br label %57

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2
  store i8* %61, i8** %62, align 16
  %63 = icmp eq i8* %61, null
  br i1 %63, label %30, label %64

; <label>:64:                                     ; preds = %57
  %65 = icmp ult i32 %58, 41
  br i1 %65, label %69, label %66

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr i8, i8* %67, i64 8
  store i8* %68, i8** %10, align 8
  br label %74

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8
  %71 = sext i32 %58 to i64
  %72 = getelementptr i8, i8* %70, i64 %71
  %73 = add i32 %58, 8
  store i32 %73, i32* %8, align 8
  br label %74

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3
  store i8* %78, i8** %79, align 8
  %80 = icmp eq i8* %78, null
  br i1 %80, label %30, label %81

; <label>:81:                                     ; preds = %74
  %82 = icmp ult i32 %75, 41
  br i1 %82, label %86, label %83

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr i8, i8* %84, i64 8
  store i8* %85, i8** %10, align 8
  br label %91

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8
  %88 = sext i32 %75 to i64
  %89 = getelementptr i8, i8* %87, i64 %88
  %90 = add i32 %75, 8
  store i32 %90, i32* %8, align 8
  br label %91

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4
  store i8* %95, i8** %96, align 16
  %97 = icmp eq i8* %95, null
  br i1 %97, label %30, label %98

; <label>:98:                                     ; preds = %91
  %99 = icmp ult i32 %92, 41
  br i1 %99, label %103, label %100

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr i8, i8* %101, i64 8
  store i8* %102, i8** %10, align 8
  br label %108

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8
  %105 = sext i32 %92 to i64
  %106 = getelementptr i8, i8* %104, i64 %105
  %107 = add i32 %92, 8
  store i32 %107, i32* %8, align 8
  br label %108

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5
  store i8* %111, i8** %112, align 8
  %113 = icmp eq i8* %111, null
  br i1 %113, label %30, label %114

; <label>:114:                                    ; preds = %108
  %115 = load i8*, i8** %10, align 8
  %116 = getelementptr i8, i8* %115, i64 8
  store i8* %116, i8** %10, align 8
  %117 = bitcast i8* %115 to i8**
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6
  store i8* %118, i8** %119, align 16
  %120 = icmp eq i8* %118, null
  br i1 %120, label %30, label %121

; <label>:121:                                    ; preds = %114
  %122 = load i8*, i8** %10, align 8
  %123 = getelementptr i8, i8* %122, i64 8
  store i8* %123, i8** %10, align 8
  %124 = bitcast i8* %122 to i8**
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7
  store i8* %125, i8** %126, align 8
  %127 = icmp eq i8* %125, null
  br i1 %127, label %30, label %128

; <label>:128:                                    ; preds = %121
  %129 = load i8*, i8** %10, align 8
  %130 = getelementptr i8, i8* %129, i64 8
  store i8* %130, i8** %10, align 8
  %131 = bitcast i8* %129 to i8**
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8
  store i8* %132, i8** %133, align 16
  %134 = icmp eq i8* %132, null
  br i1 %134, label %30, label %135

; <label>:135:                                    ; preds = %128
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr i8, i8* %136, i64 8
  store i8* %137, i8** %10, align 8
  %138 = bitcast i8* %136 to i8**
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9
  store i8* %139, i8** %140, align 8
  %141 = icmp eq i8* %139, null
  %142 = select i1 %141, i64 9, i64 10
  br label %30
}

; Function Attrs: nounwind sspstrong uwtable
define void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #6 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %6) #11
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  call void @llvm.va_start(i8* nonnull %6)
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7)
  call void @llvm.va_end(i8* nonnull %6)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %6) #11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @emit_bug_reporting_address() local_unnamed_addr #6 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.316, i64 0, i64 0), i32 5) #11
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.317, i64 0, i64 0)) #11
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.318, i64 0, i64 0), i32 5) #11
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.319, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18.320, i64 0, i64 0)) #11
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.321, i64 0, i64 0), i32 5) #11
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6) #11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @can_write_any_file() local_unnamed_addr #6 {
  %1 = load i1, i1* @can_write_any_file.initialized, align 1
  br i1 %1, label %2, label %4

; <label>:2:                                      ; preds = %0
  %3 = load i8, i8* @can_write_any_file.can_write, align 1
  br label %8

; <label>:4:                                      ; preds = %0
  %5 = tail call i32 @geteuid() #11
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* @can_write_any_file.can_write, align 1
  store i1 true, i1* @can_write_any_file.initialized, align 1
  br label %8

; <label>:8:                                      ; preds = %2, %4
  %9 = phi i8 [ %3, %2 ], [ %7, %4 ]
  %10 = icmp ne i8 %9, 0
  ret i1 %10
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #9 {
  %3 = udiv i64 9223372036854775807, %1
  %4 = icmp ult i64 %3, %0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15
  unreachable

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0
  %8 = tail call noalias i8* @malloc(i64 %7) #11
  %9 = icmp eq i8* %8, null
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15
  unreachable

; <label>:13:                                     ; preds = %6
  ret i8* %8
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmalloc(i64) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @malloc(i64 %0) #11
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15
  unreachable

; <label>:7:                                      ; preds = %1
  ret i8* %2
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #9 {
  %4 = udiv i64 9223372036854775807, %2
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15
  unreachable

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1
  %9 = icmp eq i64 %8, 0
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11
  br label %19

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11
  %15 = icmp eq i8* %14, null
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15
  unreachable

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ]
  ret i8* %20
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #6 {
  %3 = icmp eq i64 %1, 0
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11
  br label %13

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11
  %9 = icmp eq i8* %8, null
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15
  unreachable

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ]
  ret i8* %14
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #9 {
  %4 = load i64, i64* %1, align 8
  %5 = icmp eq i8* %0, null
  br i1 %5, label %6, label %13

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0
  br i1 %7, label %8, label %17

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2
  %10 = icmp ugt i64 %2, 128
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11
  br label %17

; <label>:13:                                     ; preds = %3
  %14 = udiv i64 6148914691236517204, %2
  %15 = icmp ugt i64 %14, %4
  br i1 %15, label %20, label %16

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15
  unreachable

; <label>:17:                                     ; preds = %6, %8
  %18 = phi i64 [ %12, %8 ], [ %4, %6 ]
  store i64 %18, i64* %1, align 8
  %19 = mul i64 %18, %2
  br label %27

; <label>:20:                                     ; preds = %13
  %21 = lshr i64 %4, 1
  %22 = add i64 %4, 1
  %23 = add i64 %22, %21
  store i64 %23, i64* %1, align 8
  %24 = mul i64 %23, %2
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %20
  tail call void @free(i8* nonnull %0) #11
  br label %34

; <label>:27:                                     ; preds = %17, %20
  %28 = phi i64 [ %19, %17 ], [ %24, %20 ]
  %29 = tail call i8* @realloc(i8* %0, i64 %28) #11
  %30 = icmp eq i8* %29, null
  %31 = icmp ne i64 %28, 0
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %27
  tail call void @xalloc_die() #15
  unreachable

; <label>:34:                                     ; preds = %26, %27
  %35 = phi i8* [ null, %26 ], [ %29, %27 ]
  ret i8* %35
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define noalias i8* @xcharalloc(i64) local_unnamed_addr #9 {
  %2 = tail call noalias i8* @malloc(i64 %0) #11
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15
  unreachable

; <label>:7:                                      ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #6 {
  %3 = load i64, i64* %1, align 8
  %4 = icmp eq i8* %0, null
  br i1 %4, label %5, label %8

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0
  %7 = select i1 %6, i64 128, i64 %3
  store i64 %7, i64* %1, align 8
  br label %17

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %3, 6148914691236517204
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %8
  tail call void @xalloc_die() #15
  unreachable

; <label>:11:                                     ; preds = %8
  %12 = lshr i64 %3, 1
  %13 = add i64 %3, 1
  %14 = add i64 %13, %12
  store i64 %14, i64* %1, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %11
  tail call void @free(i8* nonnull %0) #11
  br label %24

; <label>:17:                                     ; preds = %11, %5
  %18 = phi i64 [ %7, %5 ], [ %14, %11 ]
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #11
  %20 = icmp eq i8* %19, null
  %21 = icmp ne i64 %18, 0
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %17
  tail call void @xalloc_die() #15
  unreachable

; <label>:24:                                     ; preds = %16, %17
  %25 = phi i8* [ null, %16 ], [ %19, %17 ]
  ret i8* %25
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xzalloc(i64) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @malloc(i64 %0) #11
  %3 = icmp eq i8* %2, null
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15
  unreachable

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 %0, i32 1, i1 false)
  ret i8* %2
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xcalloc(i64, i64) local_unnamed_addr #6 {
  %3 = udiv i64 9223372036854775807, %1
  %4 = icmp ult i64 %3, %0
  br i1 %4, label %8, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15
  unreachable

; <label>:9:                                      ; preds = %5
  ret i8* %6
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %3 = tail call noalias i8* @malloc(i64 %1) #11
  %4 = icmp eq i8* %3, null
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15
  unreachable

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %0, i64 %1, i32 1, i1 false)
  ret i8* %3
}

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #6 {
  %2 = tail call i64 @strlen(i8* %0) #14
  %3 = add i64 %2, 1
  %4 = tail call noalias i8* @malloc(i64 %3) #11
  %5 = icmp eq i8* %4, null
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15
  unreachable

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %0, i64 %3, i32 1, i1 false) #11
  ret i8* %4
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define void @xalloc_die() local_unnamed_addr #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.336, i64 0, i64 0), i32 5) #11
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.337, i64 0, i64 0), i8* %2) #11
  tail call void @abort() #15
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.FTS* @xfts_open(i8**, i32, i32 (%struct._ftsent**, %struct._ftsent**)*) local_unnamed_addr #6 {
  %4 = or i32 %1, 512
  %5 = tail call %struct.FTS* @fts_open(i8** %0, i32 %4, i32 (%struct._ftsent**, %struct._ftsent**)* %2) #11
  %6 = icmp eq %struct.FTS* %5, null
  br i1 %6, label %7, label %13

; <label>:7:                                      ; preds = %3
  %8 = tail call i32* @__errno_location() #1
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 22
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %7
  tail call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.340, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.341, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.xfts_open, i64 0, i64 0)) #15
  unreachable

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15
  unreachable

; <label>:13:                                     ; preds = %3
  ret %struct.FTS* %5
}

; Function Attrs: nounwind readonly sspstrong uwtable
define zeroext i1 @cycle_warning_required(%struct.FTS* nocapture readonly, %struct._ftsent* nocapture readonly) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %4 = load i32, i32* %3, align 8
  %5 = and i32 %4, 17
  %6 = trunc i32 %5 to i5
  switch i5 %6, label %11 [
    i5 -16, label %12
    i5 -15, label %7
  ]

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 12
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br label %12

; <label>:11:                                     ; preds = %2
  br label %12

; <label>:12:                                     ; preds = %2, %11, %7
  %13 = phi i1 [ %10, %7 ], [ true, %2 ], [ false, %11 ]
  ret i1 %13
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @xvasprintf(i8*, %struct.__va_list_tag*) local_unnamed_addr #6 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i8*, align 8
  %5 = bitcast i8** %4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %5) #11
  br label %6

; <label>:6:                                      ; preds = %84, %2
  %7 = phi i64 [ 0, %2 ], [ %86, %84 ]
  %8 = phi i8* [ %0, %2 ], [ %85, %84 ]
  %9 = load i8, i8* %8, align 1
  switch i8 %9, label %89 [
    i8 0, label %10
    i8 37, label %80
  ]

; <label>:10:                                     ; preds = %6
  %11 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %11) #11
  %12 = bitcast %struct.__va_list_tag* %1 to i8*
  call void @llvm.va_copy(i8* nonnull %11, i8* %12) #11
  %13 = icmp eq i64 %7, 0
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %10
  call void @llvm.va_end(i8* nonnull %11) #11
  %15 = call noalias i8* @xmalloc(i64 1) #11
  br label %77

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %20 = load i32, i32* %17, align 16
  br label %21

; <label>:21:                                     ; preds = %34, %16
  %22 = phi i32 [ %20, %16 ], [ %35, %34 ]
  %23 = phi i64 [ 0, %16 ], [ %42, %34 ]
  %24 = phi i64 [ %7, %16 ], [ %43, %34 ]
  %25 = icmp ult i32 %22, 41
  br i1 %25, label %26, label %31

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %18, align 16
  %28 = sext i32 %22 to i64
  %29 = getelementptr i8, i8* %27, i64 %28
  %30 = add i32 %22, 8
  store i32 %30, i32* %17, align 16
  br label %34

; <label>:31:                                     ; preds = %21
  %32 = load i8*, i8** %19, align 8
  %33 = getelementptr i8, i8* %32, i64 8
  store i8* %33, i8** %19, align 8
  br label %34

; <label>:34:                                     ; preds = %31, %26
  %35 = phi i32 [ %30, %26 ], [ %22, %31 ]
  %36 = phi i8* [ %29, %26 ], [ %32, %31 ]
  %37 = bitcast i8* %36 to i8**
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strlen(i8* %38) #14
  %40 = add i64 %39, %23
  %41 = icmp uge i64 %40, %23
  %42 = select i1 %41, i64 %40, i64 -1
  %43 = add i64 %24, -1
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %21

; <label>:45:                                     ; preds = %34
  call void @llvm.va_end(i8* nonnull %11) #11
  %46 = icmp ugt i64 %42, 2147483647
  br i1 %46, label %47, label %49

; <label>:47:                                     ; preds = %45
  %48 = tail call i32* @__errno_location() #1
  store i32 75, i32* %48, align 4
  br label %87

; <label>:49:                                     ; preds = %45
  %50 = add i64 %40, 1
  %51 = call noalias i8* @xmalloc(i64 %50) #11
  %52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %53 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  br label %55

; <label>:55:                                     ; preds = %68, %49
  %56 = phi i64 [ %7, %49 ], [ %74, %68 ]
  %57 = phi i8* [ %51, %49 ], [ %73, %68 ]
  %58 = load i32, i32* %52, align 8
  %59 = icmp ult i32 %58, 41
  br i1 %59, label %60, label %65

; <label>:60:                                     ; preds = %55
  %61 = load i8*, i8** %53, align 8
  %62 = sext i32 %58 to i64
  %63 = getelementptr i8, i8* %61, i64 %62
  %64 = add i32 %58, 8
  store i32 %64, i32* %52, align 8
  br label %68

; <label>:65:                                     ; preds = %55
  %66 = load i8*, i8** %54, align 8
  %67 = getelementptr i8, i8* %66, i64 8
  store i8* %67, i8** %54, align 8
  br label %68

; <label>:68:                                     ; preds = %65, %60
  %69 = phi i8* [ %63, %60 ], [ %66, %65 ]
  %70 = bitcast i8* %69 to i8**
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @strlen(i8* %71) #14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %71, i64 %72, i32 1, i1 false) #11
  %73 = getelementptr inbounds i8, i8* %57, i64 %72
  %74 = add i64 %56, -1
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %55

; <label>:76:                                     ; preds = %68
  br label %77

; <label>:77:                                     ; preds = %76, %14
  %78 = phi i8* [ %15, %14 ], [ %51, %76 ]
  %79 = phi i8* [ %15, %14 ], [ %73, %76 ]
  store i8 0, i8* %79, align 1
  br label %87

; <label>:80:                                     ; preds = %6
  %81 = getelementptr inbounds i8, i8* %8, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = icmp eq i8 %82, 115
  br i1 %83, label %84, label %89

; <label>:84:                                     ; preds = %80
  %85 = getelementptr inbounds i8, i8* %8, i64 2
  %86 = add i64 %7, 1
  br label %6

; <label>:87:                                     ; preds = %77, %47
  %88 = phi i8* [ null, %47 ], [ %78, %77 ]
  call void @llvm.lifetime.end(i64 24, i8* nonnull %11) #11
  br label %99

; <label>:89:                                     ; preds = %6, %80
  %90 = call i32 @__vasprintf_chk(i8** nonnull %4, i32 1, i8* %0, %struct.__va_list_tag* %1) #11
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %97

; <label>:92:                                     ; preds = %89
  %93 = tail call i32* @__errno_location() #1
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 12
  br i1 %95, label %96, label %99

; <label>:96:                                     ; preds = %92
  call void @xalloc_die() #15
  unreachable

; <label>:97:                                     ; preds = %89
  %98 = load i8*, i8** %4, align 8
  br label %99

; <label>:99:                                     ; preds = %87, %92, %97
  %100 = phi i8* [ %98, %97 ], [ %88, %87 ], [ null, %92 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %5) #11
  ret i8* %100
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #11

; Function Attrs: nounwind
declare i32 @__vasprintf_chk(i8**, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @yesno() local_unnamed_addr #6 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = bitcast i8** %1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %3) #11
  store i8* null, i8** %1, align 8
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %4) #11
  store i64 0, i64* %2, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %6 = call i64 @__getdelim(i8** nonnull %1, i64* nonnull %2, i32 10, %struct._IO_FILE* %5) #11
  %7 = icmp slt i64 %6, 1
  br i1 %7, label %20, label %8

; <label>:8:                                      ; preds = %0
  %9 = load i8*, i8** %1, align 8
  %10 = add nsw i64 %6, -1
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = icmp eq i8 %12, 10
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %8
  store i8 0, i8* %11, align 1
  %15 = load i8*, i8** %1, align 8
  br label %16

; <label>:16:                                     ; preds = %14, %8
  %17 = phi i8* [ %15, %14 ], [ %9, %8 ]
  %18 = call i32 @rpmatch(i8* %17) #11
  %19 = icmp sgt i32 %18, 0
  br label %20

; <label>:20:                                     ; preds = %0, %16
  %21 = phi i1 [ %19, %16 ], [ false, %0 ]
  %22 = load i8*, i8** %1, align 8
  call void @free(i8* %22) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %4) #11
  call void @llvm.lifetime.end(i64 8, i8* nonnull %3) #11
  ret i1 %21
}

declare i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @rpmatch(i8*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #6 {
  %3 = icmp eq i64 %0, 0
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4
  br i1 %5, label %12, label %6

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0
  %8 = udiv i64 %7, %1
  %9 = icmp eq i64 %8, %0
  br i1 %9, label %12, label %10

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #1
  store i32 12, i32* %11, align 4
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11
  br label %16

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ]
  ret i8* %17
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fcntl(i32, i32, ...) local_unnamed_addr #6 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %4) #11
  call void @llvm.va_start(i8* nonnull %4)
  %5 = icmp eq i32 %1, 1030
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %5, label %9, label %59

; <label>:9:                                      ; preds = %2
  br i1 %8, label %10, label %16

; <label>:10:                                     ; preds = %9
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %12 = load i8*, i8** %11, align 16
  %13 = sext i32 %7 to i64
  %14 = getelementptr i8, i8* %12, i64 %13
  %15 = add i32 %7, 8
  store i32 %15, i32* %6, align 16
  br label %20

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr i8, i8* %18, i64 8
  store i8* %19, i8** %17, align 8
  br label %20

; <label>:20:                                     ; preds = %16, %10
  %21 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %39

; <label>:26:                                     ; preds = %20
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 1030, i32 %23) #11
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %36, label %29

; <label>:29:                                     ; preds = %26
  %30 = tail call i32* @__errno_location() #1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 22
  br i1 %32, label %33, label %36

; <label>:33:                                     ; preds = %29
  %34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %75, label %36

; <label>:36:                                     ; preds = %29, %26, %33
  %37 = phi i32 [ %27, %26 ], [ %27, %29 ], [ %34, %33 ]
  %38 = phi i32 [ 1, %26 ], [ 1, %29 ], [ -1, %33 ]
  store i32 %38, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  br label %42

; <label>:39:                                     ; preds = %20
  %40 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 %23)
  %41 = load i32, i32* @rpl_fcntl.have_dupfd_cloexec, align 4
  br label %42

; <label>:42:                                     ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ]
  %44 = phi i32 [ %37, %36 ], [ %40, %39 ]
  %45 = icmp sgt i32 %44, -1
  %46 = icmp eq i32 %43, -1
  %47 = and i1 %45, %46
  br i1 %47, label %48, label %75

; <label>:48:                                     ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 1) #11
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %55, label %51

; <label>:51:                                     ; preds = %48
  %52 = or i32 %49, 1
  %53 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 2, i32 %52) #11
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %75

; <label>:55:                                     ; preds = %51, %48
  %56 = tail call i32* @__errno_location() #1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @close(i32 %44) #11
  store i32 %57, i32* %56, align 4
  br label %75

; <label>:59:                                     ; preds = %2
  br i1 %8, label %60, label %66

; <label>:60:                                     ; preds = %59
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %62 = load i8*, i8** %61, align 16
  %63 = sext i32 %7 to i64
  %64 = getelementptr i8, i8* %62, i64 %63
  %65 = add i32 %7, 8
  store i32 %65, i32* %6, align 16
  br label %70

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr i8, i8* %68, i64 8
  store i8* %69, i8** %67, align 8
  br label %70

; <label>:70:                                     ; preds = %66, %60
  %71 = phi i8* [ %64, %60 ], [ %68, %66 ]
  %72 = bitcast i8* %71 to i8**
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 %1, i8* %73) #11
  br label %75

; <label>:75:                                     ; preds = %33, %51, %55, %42, %70
  %76 = phi i32 [ %74, %70 ], [ %34, %33 ], [ %44, %42 ], [ -1, %55 ], [ %44, %51 ]
  call void @llvm.va_end(i8* nonnull %4)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %4) #11
  ret i32 %76
}

declare i32 @fcntl(i32, i32, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #6 {
  %2 = icmp eq %struct._IO_FILE* %0, null
  br i1 %2, label %6, label %3

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0)
  br label %17

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11
  br label %15

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0)
  br label %17

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ]
  ret i32 %18
}

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @freadahead(%struct._IO_FILE* nocapture readonly) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ugt i8* %3, %5
  br i1 %6, label %30, label %7

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  %9 = bitcast i8** %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %12 = bitcast i8** %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = sub i64 %10, %13
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 256
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 11
  %21 = bitcast i8** %20 to i64*
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9
  %24 = bitcast i8** %23 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %22, %25
  br label %27

; <label>:27:                                     ; preds = %7, %19
  %28 = phi i64 [ %26, %19 ], [ 0, %7 ]
  %29 = add nsw i64 %14, %28
  br label %30

; <label>:30:                                     ; preds = %1, %27
  %31 = phi i64 [ %29, %27 ], [ 0, %1 ]
  ret i64 %31
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = icmp eq i8* %5, %7
  br i1 %8, label %9, label %28

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %11, %13
  br i1 %14, label %15, label %28

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %28

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %30, label %23

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, -17
  store i32 %26, i32* %24, align 8
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21
  store i64 %21, i64* %27, align 8
  br label %30

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2)
  br label %30

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ]
  ret i32 %31
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define %struct.FTS* @fts_open(i8** nocapture readonly, i32, i32 (%struct._ftsent**, %struct._ftsent**)*) local_unnamed_addr #6 {
  %4 = icmp ugt i32 %1, 8191
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %3
  %6 = tail call i32* @__errno_location() #1
  store i32 22, i32* %6, align 4
  br label %292

; <label>:7:                                      ; preds = %3
  %8 = and i32 %1, 516
  %9 = icmp eq i32 %8, 516
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %7
  %11 = tail call i32* @__errno_location() #1
  store i32 22, i32* %11, align 4
  br label %292

; <label>:12:                                     ; preds = %7
  %13 = and i32 %1, 18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %12
  %16 = tail call i32* @__errno_location() #1
  store i32 22, i32* %16, align 4
  br label %292

; <label>:17:                                     ; preds = %12
  %18 = tail call noalias i8* @malloc(i64 128) #11
  %19 = bitcast i8* %18 to %struct.FTS*
  %20 = icmp eq i8* %18, null
  br i1 %20, label %292, label %21

; <label>:21:                                     ; preds = %17
  tail call void @llvm.memset.p0i8.i64(i8* nonnull %18, i8 0, i64 128, i32 8, i1 false)
  %22 = getelementptr inbounds i8, i8* %18, i64 64
  %23 = bitcast i8* %22 to i32 (%struct._ftsent**, %struct._ftsent**)**
  store i32 (%struct._ftsent**, %struct._ftsent**)* %2, i32 (%struct._ftsent**, %struct._ftsent**)** %23, align 8
  %24 = getelementptr inbounds i8, i8* %18, i64 72
  %25 = bitcast i8* %24 to i32*
  %26 = and i32 %1, 2
  %27 = icmp eq i32 %26, 0
  %28 = and i32 %1, -517
  %29 = or i32 %28, 4
  %30 = select i1 %27, i32 %1, i32 %29
  store i32 %30, i32* %25, align 8
  %31 = getelementptr inbounds i8, i8* %18, i64 44
  %32 = bitcast i8* %31 to i32*
  store i32 -100, i32* %32, align 4
  %33 = load i8*, i8** %0, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %48, label %35

; <label>:35:                                     ; preds = %21
  br label %36

; <label>:36:                                     ; preds = %35, %36
  %37 = phi i8* [ %44, %36 ], [ %33, %35 ]
  %38 = phi i64 [ %42, %36 ], [ 0, %35 ]
  %39 = phi i8** [ %43, %36 ], [ %0, %35 ]
  %40 = tail call i64 @strlen(i8* nonnull %37) #14
  %41 = icmp ugt i64 %40, %38
  %42 = select i1 %41, i64 %40, i64 %38
  %43 = getelementptr inbounds i8*, i8** %39, i64 1
  %44 = load i8*, i8** %43, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %36

; <label>:46:                                     ; preds = %36
  %47 = add i64 %42, 1
  br label %48

; <label>:48:                                     ; preds = %46, %21
  %49 = phi i64 [ 1, %21 ], [ %47, %46 ]
  %50 = icmp ugt i64 %49, 4096
  %51 = select i1 %50, i64 %49, i64 4096
  %52 = add i64 %51, 256
  %53 = getelementptr inbounds i8, i8* %18, i64 48
  %54 = bitcast i8* %53 to i64*
  store i64 %52, i64* %54, align 8
  %55 = getelementptr inbounds i8, i8* %18, i64 32
  %56 = bitcast i8* %55 to i8**
  %57 = tail call i8* @realloc(i8* null, i64 %52) #11
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %61

; <label>:59:                                     ; preds = %48
  %60 = load i8*, i8** %56, align 8
  tail call void @free(i8* %60) #11
  br label %291

; <label>:61:                                     ; preds = %48
  store i8* %57, i8** %56, align 8
  %62 = load i8*, i8** %0, align 8
  %63 = icmp eq i8* %62, null
  %64 = ptrtoint i8* %57 to i64
  br i1 %63, label %87, label %65

; <label>:65:                                     ; preds = %61
  %66 = tail call noalias i8* @malloc(i64 272) #11
  %67 = icmp eq i8* %66, null
  br i1 %67, label %289, label %68

; <label>:68:                                     ; preds = %65
  %69 = getelementptr inbounds i8, i8* %66, i64 264
  store i8 0, i8* %69, align 1
  %70 = getelementptr inbounds i8, i8* %66, i64 96
  %71 = bitcast i8* %70 to i64*
  store i64 0, i64* %71, align 8
  %72 = getelementptr inbounds i8, i8* %66, i64 80
  %73 = bitcast i8* %72 to i8**
  store i8* %18, i8** %73, align 8
  %74 = getelementptr inbounds i8, i8* %66, i64 56
  %75 = bitcast i8* %74 to i64*
  store i64 %64, i64* %75, align 8
  %76 = getelementptr inbounds i8, i8* %66, i64 64
  %77 = bitcast i8* %76 to i32*
  store i32 0, i32* %77, align 8
  %78 = getelementptr inbounds i8, i8* %66, i64 24
  %79 = bitcast i8* %78 to %struct.__dirstream**
  store %struct.__dirstream* null, %struct.__dirstream** %79, align 8
  %80 = getelementptr inbounds i8, i8* %66, i64 114
  %81 = bitcast i8* %80 to i16*
  store i16 0, i16* %81, align 2
  %82 = getelementptr inbounds i8, i8* %66, i64 116
  %83 = bitcast i8* %82 to i16*
  store i16 3, i16* %83, align 4
  %84 = getelementptr inbounds i8, i8* %66, i64 32
  tail call void @llvm.memset.p0i8.i64(i8* %84, i8 0, i64 16, i32 8, i1 false) #11
  %85 = getelementptr inbounds i8, i8* %66, i64 88
  %86 = bitcast i8* %85 to i64*
  store i64 -1, i64* %86, align 8
  br label %87

; <label>:87:                                     ; preds = %61, %68
  %88 = phi i8* [ %66, %68 ], [ null, %61 ]
  %89 = icmp eq i32 (%struct._ftsent**, %struct._ftsent**)* %2, null
  br i1 %89, label %94, label %90

; <label>:90:                                     ; preds = %87
  %91 = load i32, i32* %25, align 8
  %92 = and i32 %91, 1024
  %93 = icmp ne i32 %92, 0
  br label %94

; <label>:94:                                     ; preds = %90, %87
  %95 = phi i1 [ true, %87 ], [ %93, %90 ]
  br i1 %63, label %191, label %96

; <label>:96:                                     ; preds = %94
  %97 = and i32 %1, 4096
  %98 = icmp eq i32 %97, 0
  %99 = bitcast i8* %55 to i64*
  br label %100

; <label>:100:                                    ; preds = %96, %178
  %101 = phi i8* [ %62, %96 ], [ %183, %178 ]
  %102 = phi i8** [ %0, %96 ], [ %181, %178 ]
  %103 = phi %struct._ftsent* [ null, %96 ], [ %180, %178 ]
  %104 = phi %struct._ftsent* [ null, %96 ], [ %179, %178 ]
  %105 = phi i64 [ 0, %96 ], [ %182, %178 ]
  %106 = tail call i64 @strlen(i8* nonnull %101) #14
  %107 = icmp ugt i64 %106, 2
  %108 = and i1 %98, %107
  br i1 %108, label %109, label %126

; <label>:109:                                    ; preds = %100
  %110 = add i64 %106, -1
  %111 = getelementptr inbounds i8, i8* %101, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = icmp eq i8 %112, 47
  br i1 %113, label %114, label %126

; <label>:114:                                    ; preds = %109
  br label %115

; <label>:115:                                    ; preds = %114, %121
  %116 = phi i64 [ %122, %121 ], [ %106, %114 ]
  %117 = add i64 %116, -2
  %118 = getelementptr inbounds i8, i8* %101, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = icmp eq i8 %119, 47
  br i1 %120, label %121, label %124

; <label>:121:                                    ; preds = %115
  %122 = add i64 %116, -1
  %123 = icmp ugt i64 %122, 1
  br i1 %123, label %115, label %124

; <label>:124:                                    ; preds = %115, %121
  %125 = phi i64 [ %116, %115 ], [ %122, %121 ]
  br label %126

; <label>:126:                                    ; preds = %124, %109, %100
  %127 = phi i64 [ %106, %100 ], [ %106, %109 ], [ %125, %124 ]
  %128 = add i64 %127, 272
  %129 = and i64 %128, -8
  %130 = tail call noalias i8* @malloc(i64 %129) #11
  %131 = icmp eq i8* %130, null
  br i1 %131, label %269, label %132

; <label>:132:                                    ; preds = %126
  %133 = bitcast i8* %130 to %struct._ftsent*
  %134 = getelementptr inbounds i8, i8* %130, i64 264
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %134, i8* nonnull %101, i64 %127, i32 1, i1 false) #11
  %135 = getelementptr inbounds i8, i8* %134, i64 %127
  store i8 0, i8* %135, align 1
  %136 = getelementptr inbounds i8, i8* %130, i64 96
  %137 = bitcast i8* %136 to i64*
  store i64 %127, i64* %137, align 8
  %138 = getelementptr inbounds i8, i8* %130, i64 80
  %139 = bitcast i8* %138 to i8**
  store i8* %18, i8** %139, align 8
  %140 = load i64, i64* %99, align 8
  %141 = getelementptr inbounds i8, i8* %130, i64 56
  %142 = bitcast i8* %141 to i64*
  store i64 %140, i64* %142, align 8
  %143 = getelementptr inbounds i8, i8* %130, i64 64
  %144 = bitcast i8* %143 to i32*
  store i32 0, i32* %144, align 8
  %145 = getelementptr inbounds i8, i8* %130, i64 24
  %146 = bitcast i8* %145 to %struct.__dirstream**
  store %struct.__dirstream* null, %struct.__dirstream** %146, align 8
  %147 = getelementptr inbounds i8, i8* %130, i64 114
  %148 = bitcast i8* %147 to i16*
  store i16 0, i16* %148, align 2
  %149 = getelementptr inbounds i8, i8* %130, i64 116
  %150 = bitcast i8* %149 to i16*
  store i16 3, i16* %150, align 4
  %151 = getelementptr inbounds i8, i8* %130, i64 32
  tail call void @llvm.memset.p0i8.i64(i8* %151, i8 0, i64 16, i32 8, i1 false) #11
  %152 = getelementptr inbounds i8, i8* %130, i64 88
  %153 = bitcast i8* %152 to i64*
  store i64 0, i64* %153, align 8
  %154 = getelementptr inbounds i8, i8* %130, i64 8
  %155 = bitcast i8* %154 to i8**
  store i8* %88, i8** %155, align 8
  %156 = getelementptr inbounds i8, i8* %130, i64 48
  %157 = bitcast i8* %156 to i8**
  store i8* %134, i8** %157, align 8
  %158 = icmp ne %struct._ftsent* %103, null
  %159 = and i1 %95, %158
  br i1 %159, label %160, label %165

; <label>:160:                                    ; preds = %132
  %161 = getelementptr inbounds i8, i8* %130, i64 112
  %162 = bitcast i8* %161 to i16*
  store i16 11, i16* %162, align 8
  %163 = getelementptr inbounds i8, i8* %130, i64 168
  %164 = bitcast i8* %163 to i64*
  store i64 2, i64* %164, align 8
  br label %169

; <label>:165:                                    ; preds = %132
  %166 = tail call fastcc zeroext i16 @fts_stat(%struct.FTS* nonnull %19, %struct._ftsent* nonnull %133, i1 zeroext false)
  %167 = getelementptr inbounds i8, i8* %130, i64 112
  %168 = bitcast i8* %167 to i16*
  store i16 %166, i16* %168, align 8
  br label %169

; <label>:169:                                    ; preds = %165, %160
  %170 = getelementptr inbounds i8, i8* %130, i64 16
  %171 = bitcast i8* %170 to %struct._ftsent**
  br i1 %89, label %173, label %172

; <label>:172:                                    ; preds = %169
  store %struct._ftsent* %103, %struct._ftsent** %171, align 8
  br label %178

; <label>:173:                                    ; preds = %169
  store %struct._ftsent* null, %struct._ftsent** %171, align 8
  %174 = icmp eq %struct._ftsent* %103, null
  br i1 %174, label %178, label %175

; <label>:175:                                    ; preds = %173
  %176 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %104, i64 0, i32 2
  %177 = bitcast %struct._ftsent** %176 to i8**
  store i8* %130, i8** %177, align 8
  br label %178

; <label>:178:                                    ; preds = %173, %175, %172
  %179 = phi %struct._ftsent* [ %133, %173 ], [ %133, %175 ], [ %104, %172 ]
  %180 = phi %struct._ftsent* [ %133, %173 ], [ %103, %175 ], [ %133, %172 ]
  %181 = getelementptr inbounds i8*, i8** %102, i64 1
  %182 = add i64 %105, 1
  %183 = load i8*, i8** %181, align 8
  %184 = icmp eq i8* %183, null
  br i1 %184, label %185, label %100

; <label>:185:                                    ; preds = %178
  %186 = icmp ne i32 (%struct._ftsent**, %struct._ftsent**)* %2, null
  %187 = icmp ugt i64 %182, 1
  %188 = and i1 %186, %187
  br i1 %188, label %189, label %191

; <label>:189:                                    ; preds = %185
  %190 = tail call fastcc %struct._ftsent* @fts_sort(%struct.FTS* %19, %struct._ftsent* nonnull %180, i64 %182)
  br label %191

; <label>:191:                                    ; preds = %94, %189, %185
  %192 = phi %struct._ftsent* [ %190, %189 ], [ %180, %185 ], [ null, %94 ]
  %193 = tail call noalias i8* @malloc(i64 272) #11
  %194 = icmp eq i8* %193, null
  br i1 %194, label %195, label %197

; <label>:195:                                    ; preds = %191
  %196 = bitcast i8* %18 to %struct._ftsent**
  store %struct._ftsent* null, %struct._ftsent** %196, align 8
  br label %270

; <label>:197:                                    ; preds = %191
  %198 = getelementptr inbounds i8, i8* %193, i64 264
  store i8 0, i8* %198, align 1
  %199 = getelementptr inbounds i8, i8* %193, i64 96
  %200 = bitcast i8* %199 to i64*
  store i64 0, i64* %200, align 8
  %201 = getelementptr inbounds i8, i8* %193, i64 80
  %202 = bitcast i8* %201 to i8**
  store i8* %18, i8** %202, align 8
  %203 = bitcast i8* %55 to i64*
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds i8, i8* %193, i64 56
  %206 = bitcast i8* %205 to i64*
  store i64 %204, i64* %206, align 8
  %207 = getelementptr inbounds i8, i8* %193, i64 64
  %208 = bitcast i8* %207 to i32*
  store i32 0, i32* %208, align 8
  %209 = getelementptr inbounds i8, i8* %193, i64 24
  %210 = bitcast i8* %209 to %struct.__dirstream**
  store %struct.__dirstream* null, %struct.__dirstream** %210, align 8
  %211 = getelementptr inbounds i8, i8* %193, i64 114
  %212 = bitcast i8* %211 to i16*
  store i16 0, i16* %212, align 2
  %213 = getelementptr inbounds i8, i8* %193, i64 116
  %214 = bitcast i8* %213 to i16*
  store i16 3, i16* %214, align 4
  %215 = getelementptr inbounds i8, i8* %193, i64 32
  tail call void @llvm.memset.p0i8.i64(i8* %215, i8 0, i64 16, i32 8, i1 false) #11
  %216 = bitcast i8* %18 to i8**
  store i8* %193, i8** %216, align 8
  %217 = getelementptr inbounds i8, i8* %193, i64 16
  %218 = bitcast i8* %217 to %struct._ftsent**
  store %struct._ftsent* %192, %struct._ftsent** %218, align 8
  %219 = getelementptr inbounds i8, i8* %193, i64 112
  %220 = bitcast i8* %219 to i16*
  store i16 9, i16* %220, align 8
  %221 = load i32, i32* %25, align 8
  %222 = and i32 %221, 258
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %229, label %224

; <label>:224:                                    ; preds = %197
  %225 = tail call %struct.hash_table* @hash_initialize(i64 31, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @AD_hash, i1 (i8*, i8*)* nonnull @AD_compare, void (i8*)* nonnull @free) #11
  %226 = getelementptr inbounds i8, i8* %18, i64 88
  %227 = bitcast i8* %226 to %struct.hash_table**
  store %struct.hash_table* %225, %struct.hash_table** %227, align 8
  %228 = icmp eq %struct.hash_table* %225, null
  br i1 %228, label %270, label %236

; <label>:229:                                    ; preds = %197
  %230 = tail call noalias i8* @malloc(i64 32) #11
  %231 = getelementptr inbounds i8, i8* %18, i64 88
  %232 = bitcast i8* %231 to i8**
  store i8* %230, i8** %232, align 8
  %233 = icmp eq i8* %230, null
  br i1 %233, label %270, label %234

; <label>:234:                                    ; preds = %229
  %235 = bitcast i8* %230 to %struct.cycle_check_state*
  tail call void @cycle_check_init(%struct.cycle_check_state* %235) #11
  br label %236

; <label>:236:                                    ; preds = %234, %224
  %237 = load i32, i32* %25, align 8
  %238 = and i32 %237, 516
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %266

; <label>:240:                                    ; preds = %236
  %241 = shl i32 %237, 13
  %242 = and i32 %241, 131072
  %243 = shl i32 %237, 7
  %244 = and i32 %243, 262144
  %245 = or i32 %242, %244
  %246 = or i32 %245, 67840
  %247 = and i32 %237, 512
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %252, label %249

; <label>:249:                                    ; preds = %240
  %250 = load i32, i32* %32, align 4
  %251 = tail call i32 (i32, i8*, i32, ...) @openat_safer(i32 %250, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.358, i64 0, i64 0), i32 %246) #11
  br label %254

; <label>:252:                                    ; preds = %240
  %253 = tail call i32 (i8*, i32, ...) @open_safer(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.358, i64 0, i64 0), i32 %246) #11
  br label %254

; <label>:254:                                    ; preds = %252, %249
  %255 = phi i32 [ %251, %249 ], [ %253, %252 ]
  %256 = icmp sgt i32 %255, -1
  br i1 %256, label %257, label %261

; <label>:257:                                    ; preds = %254
  %258 = tail call i32 @set_cloexec_flag(i32 %255, i1 zeroext true) #11
  %259 = getelementptr inbounds i8, i8* %18, i64 40
  %260 = bitcast i8* %259 to i32*
  store i32 %255, i32* %260, align 8
  br label %266

; <label>:261:                                    ; preds = %254
  %262 = getelementptr inbounds i8, i8* %18, i64 40
  %263 = bitcast i8* %262 to i32*
  store i32 %255, i32* %263, align 8
  %264 = load i32, i32* %25, align 8
  %265 = or i32 %264, 4
  store i32 %265, i32* %25, align 8
  br label %266

; <label>:266:                                    ; preds = %257, %236, %261
  %267 = getelementptr inbounds i8, i8* %18, i64 96
  %268 = bitcast i8* %267 to %struct.I_ring*
  tail call void @i_ring_init(%struct.I_ring* %268, i32 -1) #11
  br label %292

; <label>:269:                                    ; preds = %126
  br label %270

; <label>:270:                                    ; preds = %269, %229, %224, %195
  %271 = phi %struct._ftsent* [ %192, %195 ], [ %192, %224 ], [ %192, %229 ], [ %103, %269 ]
  %272 = icmp eq %struct._ftsent* %271, null
  br i1 %272, label %287, label %273

; <label>:273:                                    ; preds = %270
  br label %274

; <label>:274:                                    ; preds = %273, %283
  %275 = phi %struct._ftsent* [ %277, %283 ], [ %271, %273 ]
  %276 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %275, i64 0, i32 2
  %277 = load %struct._ftsent*, %struct._ftsent** %276, align 8
  %278 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %275, i64 0, i32 3
  %279 = load %struct.__dirstream*, %struct.__dirstream** %278, align 8
  %280 = icmp eq %struct.__dirstream* %279, null
  br i1 %280, label %283, label %281

; <label>:281:                                    ; preds = %274
  %282 = tail call i32 @closedir(%struct.__dirstream* nonnull %279) #11
  br label %283

; <label>:283:                                    ; preds = %281, %274
  %284 = bitcast %struct._ftsent* %275 to i8*
  tail call void @free(i8* %284) #11
  %285 = icmp eq %struct._ftsent* %277, null
  br i1 %285, label %286, label %274

; <label>:286:                                    ; preds = %283
  br label %287

; <label>:287:                                    ; preds = %286, %270
  tail call void @free(i8* %88) #11
  %288 = load i8*, i8** %56, align 8
  br label %289

; <label>:289:                                    ; preds = %65, %287
  %290 = phi i8* [ %57, %65 ], [ %288, %287 ]
  tail call void @free(i8* %290) #11
  br label %291

; <label>:291:                                    ; preds = %59, %289
  tail call void @free(i8* nonnull %18) #11
  br label %292

; <label>:292:                                    ; preds = %17, %291, %266, %15, %10, %5
  %293 = phi %struct.FTS* [ null, %5 ], [ null, %10 ], [ null, %291 ], [ %19, %266 ], [ null, %15 ], [ null, %17 ]
  ret %struct.FTS* %293
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i16 @fts_stat(%struct.FTS* nocapture readonly, %struct._ftsent*, i1 zeroext) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 18, i64 0
  %5 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 12
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %12, label %8

; <label>:8:                                      ; preds = %3
  %9 = zext i1 %2 to i8
  %10 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %11 = load i32, i32* %10, align 8
  br label %19

; <label>:12:                                     ; preds = %3
  %13 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  %17 = or i1 %16, %2
  %18 = zext i1 %17 to i8
  br label %19

; <label>:19:                                     ; preds = %8, %12
  %20 = phi i32* [ %10, %8 ], [ %13, %12 ]
  %21 = phi i32 [ %11, %8 ], [ %14, %12 ]
  %22 = phi i8 [ %9, %8 ], [ %18, %12 ]
  %23 = and i32 %21, 2
  %24 = icmp eq i32 %23, 0
  %25 = icmp eq i8 %22, 0
  %26 = and i1 %25, %24
  br i1 %26, label %41, label %27

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 6
  %29 = load i8*, i8** %28, align 8
  %30 = tail call i32 @__xstat(i32 1, i8* nonnull %29, %struct.stat* nonnull %4) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %55, label %32

; <label>:32:                                     ; preds = %27
  %33 = tail call i32* @__errno_location() #1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %51

; <label>:36:                                     ; preds = %32
  %37 = load i8*, i8** %28, align 8
  %38 = tail call i32 @__lxstat(i32 1, i8* nonnull %37, %struct.stat* nonnull %4) #11
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %51

; <label>:40:                                     ; preds = %36
  store i32 0, i32* %33, align 4
  br label %86

; <label>:41:                                     ; preds = %19
  %42 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 6
  %45 = load i8*, i8** %44, align 8
  %46 = tail call i32 @__fxstatat(i32 1, i32 %43, i8* nonnull %45, %struct.stat* nonnull %4, i32 256) #11
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

; <label>:48:                                     ; preds = %41
  %49 = tail call i32* @__errno_location() #1
  %50 = load i32, i32* %49, align 4
  br label %51

; <label>:51:                                     ; preds = %32, %36, %48
  %52 = phi i32 [ %50, %48 ], [ 2, %36 ], [ %34, %32 ]
  %53 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 8
  store i32 %52, i32* %53, align 8
  %54 = bitcast %struct.stat* %4 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %54, i8 0, i64 144, i32 8, i1 false)
  br label %86

; <label>:55:                                     ; preds = %27, %41
  %56 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 18, i64 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = trunc i32 %57 to i16
  %59 = and i16 %58, -4096
  switch i16 %59, label %85 [
    i16 16384, label %60
    i16 -24576, label %86
    i16 -32768, label %84
  ]

; <label>:60:                                     ; preds = %55
  %61 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 18, i64 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %20, align 8
  %64 = lshr i32 %63, 4
  %65 = and i32 %64, 2
  %66 = xor i32 %65, 2
  %67 = zext i32 %66 to i64
  %68 = sub i64 %62, %67
  %69 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 14
  store i64 %68, i64* %69, align 8
  %70 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 19, i64 0
  %71 = load i8, i8* %70, align 8
  %72 = icmp eq i8 %71, 46
  br i1 %72, label %73, label %86

; <label>:73:                                     ; preds = %60
  %74 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 19, i64 1
  %75 = load i8, i8* %74, align 1
  switch i8 %75, label %86 [
    i8 0, label %80
    i8 46, label %76
  ]

; <label>:76:                                     ; preds = %73
  %77 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 19, i64 2
  %78 = load i8, i8* %77, align 2
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %86

; <label>:80:                                     ; preds = %73, %76
  %81 = load i64, i64* %5, align 8
  %82 = icmp eq i64 %81, 0
  %83 = select i1 %82, i16 1, i16 5
  br label %86

; <label>:84:                                     ; preds = %55
  br label %86

; <label>:85:                                     ; preds = %55
  br label %86

; <label>:86:                                     ; preds = %55, %60, %76, %73, %85, %84, %80, %51, %40
  %87 = phi i16 [ 13, %40 ], [ 10, %51 ], [ %83, %80 ], [ 8, %84 ], [ 3, %85 ], [ 1, %73 ], [ 1, %76 ], [ 1, %60 ], [ 12, %55 ]
  ret i16 %87
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct._ftsent* @fts_sort(%struct.FTS* nocapture, %struct._ftsent*, i64) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 9
  %5 = bitcast i32 (%struct._ftsent**, %struct._ftsent**)** %4 to i32 (i8*, i8*)**
  %6 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %5, align 8
  %7 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %8, %2
  br i1 %9, label %14, label %10

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 2
  %12 = load %struct._ftsent**, %struct._ftsent*** %11, align 8
  %13 = bitcast %struct._ftsent** %12 to i8*
  br label %28

; <label>:14:                                     ; preds = %3
  %15 = add i64 %2, 40
  store i64 %15, i64* %7, align 8
  %16 = icmp ugt i64 %15, 2305843009213693951
  %17 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 2
  %18 = bitcast %struct._ftsent*** %17 to i8**
  br i1 %16, label %24, label %19

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %18, align 8
  %21 = shl i64 %15, 3
  %22 = tail call i8* @realloc(i8* %20, i64 %21) #11
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %14, %19
  %25 = load i8*, i8** %18, align 8
  tail call void @free(i8* %25) #11
  store %struct._ftsent** null, %struct._ftsent*** %17, align 8
  store i64 0, i64* %7, align 8
  br label %119

; <label>:26:                                     ; preds = %19
  store i8* %22, i8** %18, align 8
  %27 = bitcast i8* %22 to %struct._ftsent**
  br label %28

; <label>:28:                                     ; preds = %10, %26
  %29 = phi %struct._ftsent*** [ %11, %10 ], [ %17, %26 ]
  %30 = phi i8* [ %13, %10 ], [ %22, %26 ]
  %31 = phi %struct._ftsent** [ %12, %10 ], [ %27, %26 ]
  %32 = icmp eq %struct._ftsent* %1, null
  br i1 %32, label %44, label %33

; <label>:33:                                     ; preds = %28
  br label %34

; <label>:34:                                     ; preds = %33, %34
  %35 = phi %struct._ftsent* [ %39, %34 ], [ %1, %33 ]
  %36 = phi %struct._ftsent** [ %37, %34 ], [ %31, %33 ]
  %37 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %36, i64 1
  store %struct._ftsent* %35, %struct._ftsent** %36, align 8
  %38 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %35, i64 0, i32 2
  %39 = load %struct._ftsent*, %struct._ftsent** %38, align 8
  %40 = icmp eq %struct._ftsent* %39, null
  br i1 %40, label %41, label %34

; <label>:41:                                     ; preds = %34
  %42 = bitcast %struct._ftsent*** %29 to i8**
  %43 = load i8*, i8** %42, align 8
  br label %44

; <label>:44:                                     ; preds = %28, %41
  %45 = phi i8* [ %43, %41 ], [ %30, %28 ]
  tail call void @qsort(i8* %45, i64 %2, i64 8, i32 (i8*, i8*)* %6) #11
  %46 = load %struct._ftsent**, %struct._ftsent*** %29, align 8
  %47 = load %struct._ftsent*, %struct._ftsent** %46, align 8
  %48 = add i64 %2, -1
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %116, label %50

; <label>:50:                                     ; preds = %44
  %51 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %46, i64 1
  %52 = bitcast %struct._ftsent** %51 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %47, i64 0, i32 2
  %55 = bitcast %struct._ftsent** %54 to i64*
  store i64 %53, i64* %55, align 8
  %56 = add i64 %2, -2
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %113, label %58

; <label>:58:                                     ; preds = %50
  %59 = add i64 %2, -3
  %60 = and i64 %56, 3
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %77, label %62

; <label>:62:                                     ; preds = %58
  br label %63

; <label>:63:                                     ; preds = %63, %62
  %64 = phi i64 [ %73, %63 ], [ %56, %62 ]
  %65 = phi %struct._ftsent** [ %68, %63 ], [ %51, %62 ]
  %66 = phi i64 [ %74, %63 ], [ %60, %62 ]
  %67 = load %struct._ftsent*, %struct._ftsent** %65, align 8
  %68 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %65, i64 1
  %69 = bitcast %struct._ftsent** %68 to i64*
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %67, i64 0, i32 2
  %72 = bitcast %struct._ftsent** %71 to i64*
  store i64 %70, i64* %72, align 8
  %73 = add i64 %64, -1
  %74 = add i64 %66, -1
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %63

; <label>:76:                                     ; preds = %63
  br label %77

; <label>:77:                                     ; preds = %58, %76
  %78 = phi i64 [ %56, %58 ], [ %73, %76 ]
  %79 = phi %struct._ftsent** [ %51, %58 ], [ %68, %76 ]
  %80 = icmp ult i64 %59, 3
  br i1 %80, label %112, label %81

; <label>:81:                                     ; preds = %77
  br label %82

; <label>:82:                                     ; preds = %82, %81
  %83 = phi i64 [ %78, %81 ], [ %109, %82 ]
  %84 = phi %struct._ftsent** [ %79, %81 ], [ %104, %82 ]
  %85 = load %struct._ftsent*, %struct._ftsent** %84, align 8
  %86 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %84, i64 1
  %87 = bitcast %struct._ftsent** %86 to i64*
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %85, i64 0, i32 2
  %90 = bitcast %struct._ftsent** %89 to i64*
  store i64 %88, i64* %90, align 8
  %91 = load %struct._ftsent*, %struct._ftsent** %86, align 8
  %92 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %84, i64 2
  %93 = bitcast %struct._ftsent** %92 to i64*
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %91, i64 0, i32 2
  %96 = bitcast %struct._ftsent** %95 to i64*
  store i64 %94, i64* %96, align 8
  %97 = load %struct._ftsent*, %struct._ftsent** %92, align 8
  %98 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %84, i64 3
  %99 = bitcast %struct._ftsent** %98 to i64*
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %97, i64 0, i32 2
  %102 = bitcast %struct._ftsent** %101 to i64*
  store i64 %100, i64* %102, align 8
  %103 = load %struct._ftsent*, %struct._ftsent** %98, align 8
  %104 = getelementptr inbounds %struct._ftsent*, %struct._ftsent** %84, i64 4
  %105 = bitcast %struct._ftsent** %104 to i64*
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %103, i64 0, i32 2
  %108 = bitcast %struct._ftsent** %107 to i64*
  store i64 %106, i64* %108, align 8
  %109 = add i64 %83, -4
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %82

; <label>:111:                                    ; preds = %82
  br label %112

; <label>:112:                                    ; preds = %77, %111
  br label %113

; <label>:113:                                    ; preds = %112, %50
  %114 = getelementptr %struct._ftsent*, %struct._ftsent** %46, i64 %48
  %115 = load %struct._ftsent*, %struct._ftsent** %114, align 8
  br label %116

; <label>:116:                                    ; preds = %113, %44
  %117 = phi %struct._ftsent* [ %47, %44 ], [ %115, %113 ]
  %118 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 2
  store %struct._ftsent* null, %struct._ftsent** %118, align 8
  br label %119

; <label>:119:                                    ; preds = %24, %116
  %120 = phi %struct._ftsent* [ %47, %116 ], [ %1, %24 ]
  ret %struct._ftsent* %120
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i64 @AD_hash(i8* nocapture readonly, i64) #12 {
  %3 = getelementptr inbounds i8, i8* %0, i64 8
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = urem i64 %5, %1
  ret i64 %6
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal zeroext i1 @AD_compare(i8* nocapture readonly, i8* nocapture readonly) #12 {
  %3 = getelementptr inbounds i8, i8* %0, i64 8
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %10, label %16

; <label>:10:                                     ; preds = %2
  %11 = bitcast i8* %0 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = bitcast i8* %1 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %12, %14
  br label %16

; <label>:16:                                     ; preds = %10, %2
  %17 = phi i1 [ false, %2 ], [ %15, %10 ]
  ret i1 %17
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @fts_close(%struct.FTS*) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 0
  %3 = load %struct._ftsent*, %struct._ftsent** %2, align 8
  %4 = icmp eq %struct._ftsent* %3, null
  br i1 %4, label %26, label %5

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 12
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %9, label %23

; <label>:9:                                      ; preds = %5
  br label %10

; <label>:10:                                     ; preds = %9, %10
  %11 = phi %struct._ftsent* [ %17, %10 ], [ %3, %9 ]
  %12 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %11, i64 0, i32 2
  %13 = load %struct._ftsent*, %struct._ftsent** %12, align 8
  %14 = icmp ne %struct._ftsent* %13, null
  %15 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %11, i64 0, i32 1
  %16 = select i1 %14, %struct._ftsent** %12, %struct._ftsent** %15
  %17 = load %struct._ftsent*, %struct._ftsent** %16, align 8
  %18 = bitcast %struct._ftsent* %11 to i8*
  tail call void @free(i8* %18) #11
  %19 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %17, i64 0, i32 12
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, -1
  br i1 %21, label %10, label %22

; <label>:22:                                     ; preds = %10
  br label %23

; <label>:23:                                     ; preds = %22, %5
  %24 = phi %struct._ftsent* [ %3, %5 ], [ %17, %22 ]
  %25 = bitcast %struct._ftsent* %24 to i8*
  tail call void @free(i8* %25) #11
  br label %26

; <label>:26:                                     ; preds = %1, %23
  %27 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 1
  %28 = load %struct._ftsent*, %struct._ftsent** %27, align 8
  %29 = icmp eq %struct._ftsent* %28, null
  br i1 %29, label %44, label %30

; <label>:30:                                     ; preds = %26
  br label %31

; <label>:31:                                     ; preds = %30, %40
  %32 = phi %struct._ftsent* [ %34, %40 ], [ %28, %30 ]
  %33 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %32, i64 0, i32 2
  %34 = load %struct._ftsent*, %struct._ftsent** %33, align 8
  %35 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %32, i64 0, i32 3
  %36 = load %struct.__dirstream*, %struct.__dirstream** %35, align 8
  %37 = icmp eq %struct.__dirstream* %36, null
  br i1 %37, label %40, label %38

; <label>:38:                                     ; preds = %31
  %39 = tail call i32 @closedir(%struct.__dirstream* nonnull %36) #11
  br label %40

; <label>:40:                                     ; preds = %38, %31
  %41 = bitcast %struct._ftsent* %32 to i8*
  tail call void @free(i8* %41) #11
  %42 = icmp eq %struct._ftsent* %34, null
  br i1 %42, label %43, label %31

; <label>:43:                                     ; preds = %40
  br label %44

; <label>:44:                                     ; preds = %43, %26
  %45 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 2
  %46 = bitcast %struct._ftsent*** %45 to i8**
  %47 = load i8*, i8** %46, align 8
  tail call void @free(i8* %47) #11
  %48 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %49 = load i8*, i8** %48, align 8
  tail call void @free(i8* %49) #11
  %50 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, 512
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %64, label %54

; <label>:54:                                     ; preds = %44
  %55 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %85

; <label>:58:                                     ; preds = %54
  %59 = tail call i32 @close(i32 %56) #11
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %85, label %61

; <label>:61:                                     ; preds = %58
  %62 = tail call i32* @__errno_location() #1
  %63 = load i32, i32* %62, align 4
  br label %85

; <label>:64:                                     ; preds = %44
  %65 = and i32 %51, 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %85

; <label>:67:                                     ; preds = %64
  %68 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = tail call i32 @fchdir(i32 %69) #11
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

; <label>:72:                                     ; preds = %67
  %73 = tail call i32* @__errno_location() #1
  %74 = load i32, i32* %73, align 4
  br label %75

; <label>:75:                                     ; preds = %67, %72
  %76 = phi i32 [ %74, %72 ], [ 0, %67 ]
  %77 = load i32, i32* %68, align 8
  %78 = tail call i32 @close(i32 %77) #11
  %79 = icmp ne i32 %78, 0
  %80 = icmp eq i32 %76, 0
  %81 = and i1 %80, %79
  br i1 %81, label %82, label %85

; <label>:82:                                     ; preds = %75
  %83 = tail call i32* @__errno_location() #1
  %84 = load i32, i32* %83, align 4
  br label %85

; <label>:85:                                     ; preds = %58, %64, %82, %75, %54, %61
  %86 = phi i32 [ %63, %61 ], [ 0, %58 ], [ 0, %54 ], [ 0, %64 ], [ %84, %82 ], [ %76, %75 ]
  %87 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %88 = tail call zeroext i1 @i_ring_empty(%struct.I_ring* %87) #14
  br i1 %88, label %98, label %89

; <label>:89:                                     ; preds = %85
  br label %90

; <label>:90:                                     ; preds = %89, %95
  %91 = tail call i32 @i_ring_pop(%struct.I_ring* %87) #11
  %92 = icmp sgt i32 %91, -1
  br i1 %92, label %93, label %95

; <label>:93:                                     ; preds = %90
  %94 = tail call i32 @close(i32 %91) #11
  br label %95

; <label>:95:                                     ; preds = %93, %90
  %96 = tail call zeroext i1 @i_ring_empty(%struct.I_ring* %87) #14
  br i1 %96, label %97, label %90

; <label>:97:                                     ; preds = %95
  br label %98

; <label>:98:                                     ; preds = %97, %85
  %99 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 11
  %100 = load %struct.hash_table*, %struct.hash_table** %99, align 8
  %101 = icmp eq %struct.hash_table* %100, null
  br i1 %101, label %103, label %102

; <label>:102:                                    ; preds = %98
  tail call void @hash_free(%struct.hash_table* nonnull %100) #11
  br label %103

; <label>:103:                                    ; preds = %98, %102
  %104 = load i32, i32* %50, align 8
  %105 = and i32 %104, 258
  %106 = icmp eq i32 %105, 0
  %107 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12
  br i1 %106, label %113, label %108

; <label>:108:                                    ; preds = %103
  %109 = getelementptr inbounds %union.anon, %union.anon* %107, i64 0, i32 0
  %110 = load %struct.hash_table*, %struct.hash_table** %109, align 8
  %111 = icmp eq %struct.hash_table* %110, null
  br i1 %111, label %116, label %112

; <label>:112:                                    ; preds = %108
  tail call void @hash_free(%struct.hash_table* nonnull %110) #11
  br label %116

; <label>:113:                                    ; preds = %103
  %114 = bitcast %union.anon* %107 to i8**
  %115 = load i8*, i8** %114, align 8
  tail call void @free(i8* %115) #11
  br label %116

; <label>:116:                                    ; preds = %108, %112, %113
  %117 = bitcast %struct.FTS* %0 to i8*
  tail call void @free(i8* %117) #11
  %118 = icmp eq i32 %86, 0
  br i1 %118, label %121, label %119

; <label>:119:                                    ; preds = %116
  %120 = tail call i32* @__errno_location() #1
  store i32 %86, i32* %120, align 4
  br label %121

; <label>:121:                                    ; preds = %116, %119
  %122 = phi i32 [ -1, %119 ], [ 0, %116 ]
  ret i32 %122
}

; Function Attrs: nounwind
declare i32 @fchdir(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define %struct._ftsent* @fts_read(%struct.FTS*) local_unnamed_addr #6 {
  %2 = alloca %struct.statfs, align 8
  %3 = alloca %struct.LCO_ent, align 8
  %4 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 0
  %5 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %6 = icmp eq %struct._ftsent* %5, null
  br i1 %6, label %538, label %7

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 16384
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %538

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 17
  %14 = load i16, i16* %13, align 4
  store i16 3, i16* %13, align 4
  switch i16 %14, label %15 [
    i16 1, label %18
    i16 2, label %21
  ]

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 15
  %17 = load i16, i16* %16, align 8
  br label %62

; <label>:18:                                     ; preds = %12
  %19 = tail call fastcc zeroext i16 @fts_stat(%struct.FTS* nonnull %0, %struct._ftsent* nonnull %5, i1 zeroext false)
  %20 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 15
  store i16 %19, i16* %20, align 8
  br label %538

; <label>:21:                                     ; preds = %12
  %22 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 15
  %23 = load i16, i16* %22, align 8
  %24 = and i16 %23, -2
  %25 = icmp eq i16 %24, 12
  br i1 %25, label %26, label %62

; <label>:26:                                     ; preds = %21
  %27 = tail call fastcc zeroext i16 @fts_stat(%struct.FTS* nonnull %0, %struct._ftsent* nonnull %5, i1 zeroext true)
  store i16 %27, i16* %22, align 8
  %28 = icmp eq i16 %27, 1
  br i1 %28, label %29, label %326

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %8, align 8
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %326

; <label>:33:                                     ; preds = %29
  %34 = shl i32 %30, 13
  %35 = and i32 %34, 131072
  %36 = shl i32 %30, 7
  %37 = and i32 %36, 262144
  %38 = or i32 %35, %37
  %39 = or i32 %38, 67840
  %40 = and i32 %30, 512
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

; <label>:42:                                     ; preds = %33
  %43 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = tail call i32 (i32, i8*, i32, ...) @openat_safer(i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.358, i64 0, i64 0), i32 %39) #11
  br label %48

; <label>:46:                                     ; preds = %33
  %47 = tail call i32 (i8*, i32, ...) @open_safer(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.358, i64 0, i64 0), i32 %39) #11
  br label %48

; <label>:48:                                     ; preds = %46, %42
  %49 = phi i32 [ %45, %42 ], [ %47, %46 ]
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %56, label %51

; <label>:51:                                     ; preds = %48
  %52 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 9
  store i32 %49, i32* %52, align 4
  %53 = tail call i32* @__errno_location() #1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 8
  store i32 %54, i32* %55, align 8
  store i16 7, i16* %22, align 8
  br label %326

; <label>:56:                                     ; preds = %48
  %57 = tail call i32 @set_cloexec_flag(i32 %49, i1 zeroext true) #11
  %58 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 9
  store i32 %49, i32* %58, align 4
  %59 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 16
  %60 = load i16, i16* %59, align 2
  %61 = or i16 %60, 2
  store i16 %61, i16* %59, align 2
  br label %326

; <label>:62:                                     ; preds = %15, %21
  %63 = phi i16* [ %16, %15 ], [ %22, %21 ]
  %64 = phi i16 [ %17, %15 ], [ %23, %21 ]
  %65 = icmp eq i16 %64, 1
  br i1 %65, label %67, label %66

; <label>:66:                                     ; preds = %62
  br label %174

; <label>:67:                                     ; preds = %62
  %68 = icmp eq i16 %14, 4
  br i1 %68, label %78, label %69

; <label>:69:                                     ; preds = %67
  %70 = and i32 %9, 64
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %106, label %72

; <label>:72:                                     ; preds = %69
  %73 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 18, i64 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %74, %76
  br i1 %77, label %106, label %78

; <label>:78:                                     ; preds = %72, %67
  %79 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 16
  %80 = load i16, i16* %79, align 2
  %81 = and i16 %80, 2
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %87, label %83

; <label>:83:                                     ; preds = %78
  %84 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = tail call i32 @close(i32 %85) #11
  br label %87

; <label>:87:                                     ; preds = %78, %83
  %88 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 1
  %89 = load %struct._ftsent*, %struct._ftsent** %88, align 8
  %90 = icmp eq %struct._ftsent* %89, null
  br i1 %90, label %105, label %91

; <label>:91:                                     ; preds = %87
  br label %92

; <label>:92:                                     ; preds = %91, %101
  %93 = phi %struct._ftsent* [ %95, %101 ], [ %89, %91 ]
  %94 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %93, i64 0, i32 2
  %95 = load %struct._ftsent*, %struct._ftsent** %94, align 8
  %96 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %93, i64 0, i32 3
  %97 = load %struct.__dirstream*, %struct.__dirstream** %96, align 8
  %98 = icmp eq %struct.__dirstream* %97, null
  br i1 %98, label %101, label %99

; <label>:99:                                     ; preds = %92
  %100 = tail call i32 @closedir(%struct.__dirstream* nonnull %97) #11
  br label %101

; <label>:101:                                    ; preds = %99, %92
  %102 = bitcast %struct._ftsent* %93 to i8*
  tail call void @free(i8* %102) #11
  %103 = icmp eq %struct._ftsent* %95, null
  br i1 %103, label %104, label %92

; <label>:104:                                    ; preds = %101
  store %struct._ftsent* null, %struct._ftsent** %88, align 8
  br label %105

; <label>:105:                                    ; preds = %87, %104
  store i16 6, i16* %63, align 8
  tail call fastcc void @leave_dir(%struct.FTS* nonnull %0, %struct._ftsent* %5)
  br label %538

; <label>:106:                                    ; preds = %72, %69
  %107 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 1
  %108 = load %struct._ftsent*, %struct._ftsent** %107, align 8
  %109 = icmp eq %struct._ftsent* %108, null
  br i1 %109, label %155, label %110

; <label>:110:                                    ; preds = %106
  %111 = and i32 %9, 8192
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %128, label %113

; <label>:113:                                    ; preds = %110
  %114 = and i32 %9, -8193
  store i32 %114, i32* %8, align 8
  br label %115

; <label>:115:                                    ; preds = %113, %124
  %116 = phi %struct._ftsent* [ %118, %124 ], [ %108, %113 ]
  %117 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %116, i64 0, i32 2
  %118 = load %struct._ftsent*, %struct._ftsent** %117, align 8
  %119 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %116, i64 0, i32 3
  %120 = load %struct.__dirstream*, %struct.__dirstream** %119, align 8
  %121 = icmp eq %struct.__dirstream* %120, null
  br i1 %121, label %124, label %122

; <label>:122:                                    ; preds = %115
  %123 = tail call i32 @closedir(%struct.__dirstream* nonnull %120) #11
  br label %124

; <label>:124:                                    ; preds = %122, %115
  %125 = bitcast %struct._ftsent* %116 to i8*
  tail call void @free(i8* %125) #11
  %126 = icmp eq %struct._ftsent* %118, null
  br i1 %126, label %127, label %115

; <label>:127:                                    ; preds = %124
  store %struct._ftsent* null, %struct._ftsent** %107, align 8
  br label %155

; <label>:128:                                    ; preds = %110
  %129 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 6
  %130 = load i8*, i8** %129, align 8
  %131 = tail call fastcc i32 @fts_safe_changedir(%struct.FTS* nonnull %0, %struct._ftsent* nonnull %5, i32 -1, i8* %130)
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %172, label %133

; <label>:133:                                    ; preds = %128
  %134 = tail call i32* @__errno_location() #1
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 8
  store i32 %135, i32* %136, align 8
  %137 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 16
  %138 = load i16, i16* %137, align 2
  %139 = or i16 %138, 1
  store i16 %139, i16* %137, align 2
  %140 = load %struct._ftsent*, %struct._ftsent** %107, align 8
  %141 = icmp eq %struct._ftsent* %140, null
  br i1 %141, label %172, label %142

; <label>:142:                                    ; preds = %133
  br label %143

; <label>:143:                                    ; preds = %142, %143
  %144 = phi %struct._ftsent* [ %153, %143 ], [ %140, %142 ]
  %145 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %144, i64 0, i32 1
  %146 = load %struct._ftsent*, %struct._ftsent** %145, align 8
  %147 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %146, i64 0, i32 6
  %148 = bitcast i8** %147 to i64*
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %144, i64 0, i32 6
  %151 = bitcast i8** %150 to i64*
  store i64 %149, i64* %151, align 8
  %152 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %144, i64 0, i32 2
  %153 = load %struct._ftsent*, %struct._ftsent** %152, align 8
  %154 = icmp eq %struct._ftsent* %153, null
  br i1 %154, label %171, label %143

; <label>:155:                                    ; preds = %127, %106
  %156 = tail call fastcc %struct._ftsent* @fts_build(%struct.FTS* nonnull %0, i32 3)
  store %struct._ftsent* %156, %struct._ftsent** %107, align 8
  %157 = icmp eq %struct._ftsent* %156, null
  br i1 %157, label %158, label %172

; <label>:158:                                    ; preds = %155
  %159 = load i32, i32* %8, align 8
  %160 = and i32 %159, 16384
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %538

; <label>:162:                                    ; preds = %158
  %163 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 8
  %164 = load i32, i32* %163, align 8
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %170, label %166

; <label>:166:                                    ; preds = %162
  %167 = load i16, i16* %63, align 8
  %168 = icmp eq i16 %167, 4
  br i1 %168, label %170, label %169

; <label>:169:                                    ; preds = %166
  store i16 7, i16* %63, align 8
  br label %170

; <label>:170:                                    ; preds = %166, %162, %169
  tail call fastcc void @leave_dir(%struct.FTS* nonnull %0, %struct._ftsent* nonnull %5)
  br label %538

; <label>:171:                                    ; preds = %143
  br label %172

; <label>:172:                                    ; preds = %171, %133, %128, %155
  %173 = load %struct._ftsent*, %struct._ftsent** %107, align 8
  store %struct._ftsent* null, %struct._ftsent** %107, align 8
  br label %305

; <label>:174:                                    ; preds = %66, %263
  %175 = phi %struct._ftsent* [ %177, %263 ], [ %5, %66 ]
  %176 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %175, i64 0, i32 2
  %177 = load %struct._ftsent*, %struct._ftsent** %176, align 8
  %178 = icmp eq %struct._ftsent* %177, null
  br i1 %178, label %179, label %201

; <label>:179:                                    ; preds = %174
  %180 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %175, i64 0, i32 1
  %181 = load %struct._ftsent*, %struct._ftsent** %180, align 8
  %182 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %181, i64 0, i32 3
  %183 = load %struct.__dirstream*, %struct.__dirstream** %182, align 8
  %184 = icmp eq %struct.__dirstream* %183, null
  br i1 %184, label %434, label %185

; <label>:185:                                    ; preds = %179
  store %struct._ftsent* %181, %struct._ftsent** %4, align 8
  %186 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %187 = load i8*, i8** %186, align 8
  %188 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %181, i64 0, i32 10
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  store i8 0, i8* %190, align 1
  %191 = tail call fastcc %struct._ftsent* @fts_build(%struct.FTS* %0, i32 3)
  %192 = icmp eq %struct._ftsent* %191, null
  br i1 %192, label %193, label %199

; <label>:193:                                    ; preds = %185
  %194 = load i32, i32* %8, align 8
  %195 = and i32 %194, 16384
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %538

; <label>:197:                                    ; preds = %193
  %198 = load %struct._ftsent*, %struct._ftsent** %180, align 8
  br label %434

; <label>:199:                                    ; preds = %185
  %200 = bitcast %struct._ftsent* %175 to i8*
  tail call void @free(i8* %200) #11
  br label %305

; <label>:201:                                    ; preds = %174
  store %struct._ftsent* %177, %struct._ftsent** %4, align 8
  %202 = bitcast %struct._ftsent* %175 to i8*
  tail call void @free(i8* %202) #11
  %203 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 12
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %263

; <label>:206:                                    ; preds = %201
  %207 = tail call fastcc i32 @restore_initial_cwd(%struct.FTS* nonnull %0)
  %208 = icmp eq i32 %207, 0
  %209 = load i32, i32* %8, align 8
  br i1 %208, label %212, label %210

; <label>:210:                                    ; preds = %206
  %211 = or i32 %209, 16384
  store i32 %211, i32* %8, align 8
  br label %538

; <label>:212:                                    ; preds = %206
  %213 = and i32 %209, 258
  %214 = icmp eq i32 %213, 0
  %215 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12
  br i1 %214, label %221, label %216

; <label>:216:                                    ; preds = %212
  %217 = getelementptr inbounds %union.anon, %union.anon* %215, i64 0, i32 0
  %218 = load %struct.hash_table*, %struct.hash_table** %217, align 8
  %219 = icmp eq %struct.hash_table* %218, null
  br i1 %219, label %224, label %220

; <label>:220:                                    ; preds = %216
  tail call void @hash_free(%struct.hash_table* nonnull %218) #11
  br label %224

; <label>:221:                                    ; preds = %212
  %222 = bitcast %union.anon* %215 to i8**
  %223 = load i8*, i8** %222, align 8
  tail call void @free(i8* %223) #11
  br label %224

; <label>:224:                                    ; preds = %216, %220, %221
  %225 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 13
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 10
  store i64 %226, i64* %227, align 8
  %228 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %229 = load i8*, i8** %228, align 8
  %230 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 19, i64 0
  %231 = add i64 %226, 1
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %229, i8* %230, i64 %231, i32 1, i1 false) #11
  %232 = tail call i8* @strrchr(i8* %230, i32 47) #14
  %233 = icmp eq i8* %232, null
  br i1 %233, label %244, label %234

; <label>:234:                                    ; preds = %224
  %235 = icmp eq i8* %232, %230
  br i1 %235, label %236, label %240

; <label>:236:                                    ; preds = %234
  %237 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 19, i64 1
  %238 = load i8, i8* %237, align 1
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %244, label %240

; <label>:240:                                    ; preds = %236, %234
  %241 = getelementptr inbounds i8, i8* %232, i64 1
  %242 = tail call i64 @strlen(i8* %241) #14
  %243 = add i64 %242, 1
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %230, i8* %241, i64 %243, i32 1, i1 false) #11
  store i64 %242, i64* %225, align 8
  br label %244

; <label>:244:                                    ; preds = %224, %236, %240
  %245 = bitcast i8** %228 to i64*
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 7
  %248 = bitcast i8** %247 to i64*
  store i64 %246, i64* %248, align 8
  %249 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 6
  %250 = bitcast i8** %249 to i64*
  store i64 %246, i64* %250, align 8
  %251 = load i32, i32* %8, align 8
  %252 = and i32 %251, 258
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %257, label %254

; <label>:254:                                    ; preds = %244
  %255 = tail call %struct.hash_table* @hash_initialize(i64 31, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @AD_hash, i1 (i8*, i8*)* nonnull @AD_compare, void (i8*)* nonnull @free) #11
  %256 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12, i32 0
  store %struct.hash_table* %255, %struct.hash_table** %256, align 8
  br label %326

; <label>:257:                                    ; preds = %244
  %258 = tail call noalias i8* @malloc(i64 32) #11
  %259 = bitcast %union.anon* %215 to i8**
  store i8* %258, i8** %259, align 8
  %260 = icmp eq i8* %258, null
  br i1 %260, label %326, label %261

; <label>:261:                                    ; preds = %257
  %262 = bitcast i8* %258 to %struct.cycle_check_state*
  tail call void @cycle_check_init(%struct.cycle_check_state* %262) #11
  br label %326

; <label>:263:                                    ; preds = %201
  %264 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 17
  %265 = load i16, i16* %264, align 4
  switch i16 %265, label %304 [
    i16 4, label %174
    i16 2, label %266
  ]

; <label>:266:                                    ; preds = %263
  %267 = tail call fastcc zeroext i16 @fts_stat(%struct.FTS* nonnull %0, %struct._ftsent* nonnull %177, i1 zeroext true)
  %268 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 15
  store i16 %267, i16* %268, align 8
  %269 = icmp eq i16 %267, 1
  br i1 %269, label %270, label %303

; <label>:270:                                    ; preds = %266
  %271 = load i32, i32* %8, align 8
  %272 = and i32 %271, 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %303

; <label>:274:                                    ; preds = %270
  %275 = shl i32 %271, 13
  %276 = and i32 %275, 131072
  %277 = shl i32 %271, 7
  %278 = and i32 %277, 262144
  %279 = or i32 %276, %278
  %280 = or i32 %279, 67840
  %281 = and i32 %271, 512
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %287, label %283

; <label>:283:                                    ; preds = %274
  %284 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %285 = load i32, i32* %284, align 4
  %286 = tail call i32 (i32, i8*, i32, ...) @openat_safer(i32 %285, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.358, i64 0, i64 0), i32 %280) #11
  br label %289

; <label>:287:                                    ; preds = %274
  %288 = tail call i32 (i8*, i32, ...) @open_safer(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.358, i64 0, i64 0), i32 %280) #11
  br label %289

; <label>:289:                                    ; preds = %287, %283
  %290 = phi i32 [ %286, %283 ], [ %288, %287 ]
  %291 = icmp sgt i32 %290, -1
  br i1 %291, label %297, label %292

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 9
  store i32 %290, i32* %293, align 4
  %294 = tail call i32* @__errno_location() #1
  %295 = load i32, i32* %294, align 4
  %296 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 8
  store i32 %295, i32* %296, align 8
  store i16 7, i16* %268, align 8
  br label %303

; <label>:297:                                    ; preds = %289
  %298 = tail call i32 @set_cloexec_flag(i32 %290, i1 zeroext true) #11
  %299 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 9
  store i32 %290, i32* %299, align 4
  %300 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %177, i64 0, i32 16
  %301 = load i16, i16* %300, align 2
  %302 = or i16 %301, 2
  store i16 %302, i16* %300, align 2
  br label %303

; <label>:303:                                    ; preds = %270, %292, %297, %266
  store i16 3, i16* %264, align 4
  br label %305

; <label>:304:                                    ; preds = %263
  br label %305

; <label>:305:                                    ; preds = %304, %303, %199, %172
  %306 = phi %struct._ftsent* [ %173, %172 ], [ %191, %199 ], [ %177, %303 ], [ %177, %304 ]
  %307 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %308 = load i8*, i8** %307, align 8
  %309 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %306, i64 0, i32 1
  %310 = load %struct._ftsent*, %struct._ftsent** %309, align 8
  %311 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %310, i64 0, i32 7
  %312 = load i8*, i8** %311, align 8
  %313 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %310, i64 0, i32 10
  %314 = load i64, i64* %313, align 8
  %315 = add i64 %314, -1
  %316 = getelementptr inbounds i8, i8* %312, i64 %315
  %317 = load i8, i8* %316, align 1
  %318 = icmp eq i8 %317, 47
  %319 = select i1 %318, i64 %315, i64 %314
  %320 = getelementptr inbounds i8, i8* %308, i64 %319
  %321 = getelementptr inbounds i8, i8* %320, i64 1
  store i8 47, i8* %320, align 1
  %322 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %306, i64 0, i32 19, i64 0
  %323 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %306, i64 0, i32 13
  %324 = load i64, i64* %323, align 8
  %325 = add i64 %324, 1
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %321, i8* %322, i64 %325, i32 1, i1 false)
  br label %326

; <label>:326:                                    ; preds = %254, %257, %261, %29, %26, %56, %51, %305
  %327 = phi %struct._ftsent* [ %5, %29 ], [ %5, %51 ], [ %5, %56 ], [ %5, %26 ], [ %306, %305 ], [ %177, %261 ], [ %177, %254 ], [ %177, %257 ]
  store %struct._ftsent* %327, %struct._ftsent** %4, align 8
  %328 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %327, i64 0, i32 15
  %329 = load i16, i16* %328, align 8
  %330 = icmp eq i16 %329, 11
  br i1 %330, label %331, label %419

; <label>:331:                                    ; preds = %326
  %332 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %327, i64 0, i32 18, i64 0, i32 8
  %333 = load i64, i64* %332, align 8
  switch i64 %333, label %416 [
    i64 2, label %334
    i64 1, label %417
  ]

; <label>:334:                                    ; preds = %331
  %335 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %327, i64 0, i32 1
  %336 = load %struct._ftsent*, %struct._ftsent** %335, align 8
  %337 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %327, i64 0, i32 12
  %338 = load i64, i64* %337, align 8
  %339 = icmp sgt i64 %338, 0
  br i1 %339, label %340, label %401

; <label>:340:                                    ; preds = %334
  %341 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %336, i64 0, i32 14
  %342 = load i64, i64* %341, align 8
  %343 = icmp eq i64 %342, 0
  br i1 %343, label %344, label %401

; <label>:344:                                    ; preds = %340
  %345 = load i32, i32* %8, align 8
  %346 = and i32 %345, 24
  %347 = icmp eq i32 %346, 24
  br i1 %347, label %348, label %401

; <label>:348:                                    ; preds = %344
  %349 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %336, i64 0, i32 11
  %350 = load %struct.FTS*, %struct.FTS** %349, align 8
  %351 = getelementptr inbounds %struct.FTS, %struct.FTS* %350, i64 0, i32 11
  %352 = load %struct.hash_table*, %struct.hash_table** %351, align 8
  %353 = bitcast %struct.LCO_ent* %3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %353) #11
  %354 = getelementptr inbounds %struct.FTS, %struct.FTS* %350, i64 0, i32 10
  %355 = load i32, i32* %354, align 8
  %356 = and i32 %355, 512
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %399, label %358

; <label>:358:                                    ; preds = %348
  %359 = icmp eq %struct.hash_table* %352, null
  br i1 %359, label %360, label %363

; <label>:360:                                    ; preds = %358
  %361 = tail call %struct.hash_table* @hash_initialize(i64 13, %struct.hash_tuning* null, i64 (i8*, i64)* nonnull @LCO_hash, i1 (i8*, i8*)* nonnull @LCO_compare, void (i8*)* nonnull @free) #11
  store %struct.hash_table* %361, %struct.hash_table** %351, align 8
  %362 = icmp eq %struct.hash_table* %361, null
  br i1 %362, label %399, label %363

; <label>:363:                                    ; preds = %360, %358
  %364 = phi %struct.hash_table* [ %361, %360 ], [ %352, %358 ]
  %365 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %336, i64 0, i32 18, i64 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = getelementptr inbounds %struct.LCO_ent, %struct.LCO_ent* %3, i64 0, i32 0
  store i64 %366, i64* %367, align 8
  %368 = call i8* @hash_lookup(%struct.hash_table* nonnull %364, i8* nonnull %353) #11
  %369 = icmp eq i8* %368, null
  br i1 %369, label %374, label %370

; <label>:370:                                    ; preds = %363
  %371 = getelementptr inbounds i8, i8* %368, i64 8
  %372 = load i8, i8* %371, align 8
  %373 = icmp eq i8 %372, 0
  call void @llvm.lifetime.end(i64 16, i8* nonnull %353) #11
  br i1 %373, label %401, label %417

; <label>:374:                                    ; preds = %363
  %375 = call noalias i8* @malloc(i64 16) #11
  %376 = icmp eq i8* %375, null
  br i1 %376, label %399, label %377

; <label>:377:                                    ; preds = %374
  %378 = getelementptr inbounds %struct.FTS, %struct.FTS* %350, i64 0, i32 6
  %379 = load i32, i32* %378, align 4
  %380 = bitcast %struct.statfs* %2 to i8*
  call void @llvm.lifetime.start(i64 120, i8* nonnull %380) #11
  %381 = call i32 @fstatfs(i32 %379, %struct.statfs* nonnull %2) #11
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %387

; <label>:383:                                    ; preds = %377
  %384 = getelementptr inbounds %struct.statfs, %struct.statfs* %2, i64 0, i32 0
  %385 = load i64, i64* %384, align 8
  switch i64 %385, label %386 [
    i64 1382369651, label %387
    i64 1481003842, label %387
  ]

; <label>:386:                                    ; preds = %383
  br label %387

; <label>:387:                                    ; preds = %386, %383, %383, %377
  %388 = phi i1 [ false, %386 ], [ false, %377 ], [ true, %383 ], [ true, %383 ]
  call void @llvm.lifetime.end(i64 120, i8* nonnull %380) #11
  %389 = zext i1 %388 to i8
  %390 = getelementptr inbounds i8, i8* %375, i64 8
  store i8 %389, i8* %390, align 8
  %391 = load i64, i64* %365, align 8
  %392 = bitcast i8* %375 to i64*
  store i64 %391, i64* %392, align 8
  %393 = call i8* @hash_insert(%struct.hash_table* nonnull %364, i8* nonnull %375) #11
  %394 = icmp eq i8* %393, null
  br i1 %394, label %395, label %396

; <label>:395:                                    ; preds = %387
  call void @free(i8* nonnull %375) #11
  br label %399

; <label>:396:                                    ; preds = %387
  %397 = icmp eq i8* %393, %375
  br i1 %397, label %400, label %398

; <label>:398:                                    ; preds = %396
  call void @abort() #15
  unreachable

; <label>:399:                                    ; preds = %395, %348, %360, %374
  call void @llvm.lifetime.end(i64 16, i8* nonnull %353) #11
  br label %401

; <label>:400:                                    ; preds = %396
  call void @llvm.lifetime.end(i64 16, i8* nonnull %353) #11
  br i1 %388, label %417, label %401

; <label>:401:                                    ; preds = %370, %344, %399, %400, %340, %334
  %402 = call fastcc zeroext i16 @fts_stat(%struct.FTS* nonnull %0, %struct._ftsent* %327, i1 zeroext false)
  store i16 %402, i16* %328, align 8
  %403 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %327, i64 0, i32 18, i64 0, i32 3
  %404 = load i32, i32* %403, align 8
  %405 = and i32 %404, 61440
  %406 = icmp eq i32 %405, 16384
  br i1 %406, label %407, label %419

; <label>:407:                                    ; preds = %401
  %408 = load i64, i64* %337, align 8
  %409 = icmp eq i64 %408, 0
  br i1 %409, label %417, label %410

; <label>:410:                                    ; preds = %407
  %411 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %336, i64 0, i32 14
  %412 = load i64, i64* %411, align 8
  %413 = icmp eq i64 %412, 0
  br i1 %413, label %417, label %414

; <label>:414:                                    ; preds = %410
  %415 = add i64 %412, -1
  store i64 %415, i64* %411, align 8
  br label %417

; <label>:416:                                    ; preds = %331
  tail call void @abort() #15
  unreachable

; <label>:417:                                    ; preds = %370, %410, %407, %414, %400, %331
  %418 = load i16, i16* %328, align 8
  br label %419

; <label>:419:                                    ; preds = %417, %401, %326
  %420 = phi i16 [ %418, %417 ], [ %402, %401 ], [ %329, %326 ]
  %421 = icmp eq i16 %420, 1
  br i1 %421, label %422, label %538

; <label>:422:                                    ; preds = %419
  %423 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %327, i64 0, i32 12
  %424 = load i64, i64* %423, align 8
  %425 = icmp eq i64 %424, 0
  br i1 %425, label %426, label %430

; <label>:426:                                    ; preds = %422
  %427 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %327, i64 0, i32 18, i64 0, i32 0
  %428 = load i64, i64* %427, align 8
  %429 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 3
  store i64 %428, i64* %429, align 8
  br label %430

; <label>:430:                                    ; preds = %426, %422
  %431 = call fastcc zeroext i1 @enter_dir(%struct.FTS* %0, %struct._ftsent* nonnull %327)
  br i1 %431, label %538, label %432

; <label>:432:                                    ; preds = %430
  %433 = tail call i32* @__errno_location() #1
  store i32 12, i32* %433, align 4
  br label %538

; <label>:434:                                    ; preds = %179, %197
  %435 = phi %struct._ftsent* [ %198, %197 ], [ %181, %179 ]
  store %struct._ftsent* %435, %struct._ftsent** %4, align 8
  %436 = bitcast %struct._ftsent* %175 to i8*
  tail call void @free(i8* %436) #11
  %437 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %435, i64 0, i32 12
  %438 = load i64, i64* %437, align 8
  %439 = icmp eq i64 %438, -1
  br i1 %439, label %440, label %443

; <label>:440:                                    ; preds = %434
  %441 = bitcast %struct._ftsent* %435 to i8*
  tail call void @free(i8* %441) #11
  %442 = tail call i32* @__errno_location() #1
  store i32 0, i32* %442, align 4
  store %struct._ftsent* null, %struct._ftsent** %4, align 8
  br label %538

; <label>:443:                                    ; preds = %434
  %444 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %435, i64 0, i32 15
  %445 = load i16, i16* %444, align 8
  %446 = icmp eq i16 %445, 11
  br i1 %446, label %447, label %448

; <label>:447:                                    ; preds = %443
  tail call void @abort() #15
  unreachable

; <label>:448:                                    ; preds = %443
  %449 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %450 = load i8*, i8** %449, align 8
  %451 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %435, i64 0, i32 10
  %452 = load i64, i64* %451, align 8
  %453 = getelementptr inbounds i8, i8* %450, i64 %452
  store i8 0, i8* %453, align 1
  %454 = load i64, i64* %437, align 8
  %455 = icmp eq i64 %454, 0
  br i1 %455, label %456, label %465

; <label>:456:                                    ; preds = %448
  %457 = tail call fastcc i32 @restore_initial_cwd(%struct.FTS* nonnull %0)
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %523, label %459

; <label>:459:                                    ; preds = %456
  %460 = tail call i32* @__errno_location() #1
  %461 = load i32, i32* %460, align 4
  %462 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %435, i64 0, i32 8
  store i32 %461, i32* %462, align 8
  %463 = load i32, i32* %8, align 8
  %464 = or i32 %463, 16384
  store i32 %464, i32* %8, align 8
  br label %523

; <label>:465:                                    ; preds = %448
  %466 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %435, i64 0, i32 16
  %467 = load i16, i16* %466, align 2
  %468 = zext i16 %467 to i32
  %469 = and i32 %468, 2
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %509, label %471

; <label>:471:                                    ; preds = %465
  %472 = load i32, i32* %8, align 8
  %473 = and i32 %472, 4
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %477, label %475

; <label>:475:                                    ; preds = %471
  %476 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %435, i64 0, i32 9
  br label %505

; <label>:477:                                    ; preds = %471
  %478 = and i32 %472, 512
  %479 = icmp eq i32 %478, 0
  %480 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %435, i64 0, i32 9
  %481 = load i32, i32* %480, align 4
  br i1 %479, label %496, label %482

; <label>:482:                                    ; preds = %477
  %483 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %484 = load i32, i32* %483, align 4
  %485 = icmp ne i32 %484, %481
  %486 = icmp eq i32 %484, -100
  %487 = or i1 %485, %486
  br i1 %487, label %489, label %488

; <label>:488:                                    ; preds = %482
  tail call void @abort() #15
  unreachable

; <label>:489:                                    ; preds = %482
  %490 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %491 = tail call i32 @i_ring_push(%struct.I_ring* %490, i32 %484) #11
  %492 = icmp sgt i32 %491, -1
  br i1 %492, label %493, label %495

; <label>:493:                                    ; preds = %489
  %494 = tail call i32 @close(i32 %491) #11
  br label %495

; <label>:495:                                    ; preds = %489, %493
  store i32 %481, i32* %483, align 4
  br label %505

; <label>:496:                                    ; preds = %477
  %497 = tail call i32 @fchdir(i32 %481) #11
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %505, label %499

; <label>:499:                                    ; preds = %496
  %500 = tail call i32* @__errno_location() #1
  %501 = load i32, i32* %500, align 4
  %502 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %435, i64 0, i32 8
  store i32 %501, i32* %502, align 8
  %503 = load i32, i32* %8, align 8
  %504 = or i32 %503, 16384
  store i32 %504, i32* %8, align 8
  br label %505

; <label>:505:                                    ; preds = %475, %496, %495, %499
  %506 = phi i32* [ %476, %475 ], [ %480, %496 ], [ %480, %495 ], [ %480, %499 ]
  %507 = load i32, i32* %506, align 4
  %508 = tail call i32 @close(i32 %507) #11
  br label %523

; <label>:509:                                    ; preds = %465
  %510 = and i32 %468, 1
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %523

; <label>:512:                                    ; preds = %509
  %513 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %435, i64 0, i32 1
  %514 = load %struct._ftsent*, %struct._ftsent** %513, align 8
  %515 = tail call fastcc i32 @fts_safe_changedir(%struct.FTS* nonnull %0, %struct._ftsent* %514, i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.363, i64 0, i64 0))
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %523, label %517

; <label>:517:                                    ; preds = %512
  %518 = tail call i32* @__errno_location() #1
  %519 = load i32, i32* %518, align 4
  %520 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %435, i64 0, i32 8
  store i32 %519, i32* %520, align 8
  %521 = load i32, i32* %8, align 8
  %522 = or i32 %521, 16384
  store i32 %522, i32* %8, align 8
  br label %523

; <label>:523:                                    ; preds = %456, %512, %509, %505, %517, %459
  %524 = load i16, i16* %444, align 8
  %525 = icmp eq i16 %524, 2
  br i1 %525, label %533, label %526

; <label>:526:                                    ; preds = %523
  %527 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %435, i64 0, i32 8
  %528 = load i32, i32* %527, align 8
  %529 = icmp ne i32 %528, 0
  %530 = select i1 %529, i16 7, i16 6
  store i16 %530, i16* %444, align 8
  %531 = icmp eq i32 %528, 0
  br i1 %531, label %532, label %533

; <label>:532:                                    ; preds = %526
  tail call fastcc void @leave_dir(%struct.FTS* nonnull %0, %struct._ftsent* nonnull %435)
  br label %533

; <label>:533:                                    ; preds = %523, %526, %532
  %534 = load i32, i32* %8, align 8
  %535 = and i32 %534, 16384
  %536 = icmp ne i32 %535, 0
  %537 = select i1 %536, %struct._ftsent* null, %struct._ftsent* %435
  br label %538

; <label>:538:                                    ; preds = %419, %430, %193, %158, %1, %7, %533, %440, %432, %210, %170, %105, %18
  %539 = phi %struct._ftsent* [ %5, %18 ], [ null, %432 ], [ %5, %105 ], [ %5, %170 ], [ null, %440 ], [ %537, %533 ], [ null, %210 ], [ null, %7 ], [ null, %1 ], [ null, %158 ], [ null, %193 ], [ %327, %430 ], [ %327, %419 ]
  ret %struct._ftsent* %539
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @leave_dir(%struct.FTS* nocapture readonly, %struct._ftsent* nocapture readonly) unnamed_addr #6 {
  %3 = alloca %struct.Active_dir, align 16
  %4 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 18, i64 0
  %5 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, 258
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

; <label>:9:                                      ; preds = %2
  %10 = bitcast %struct.Active_dir* %3 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %10) #11
  %11 = bitcast %struct.stat* %4 to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %13 = bitcast %struct.Active_dir* %3 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %13, align 16
  %14 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12, i32 0
  %15 = load %struct.hash_table*, %struct.hash_table** %14, align 8
  %16 = call i8* @hash_delete(%struct.hash_table* %15, i8* nonnull %10) #11
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %9
  call void @abort() #15
  unreachable

; <label>:19:                                     ; preds = %9
  call void @free(i8* nonnull %16) #11
  call void @llvm.lifetime.end(i64 24, i8* nonnull %10) #11
  br label %53

; <label>:20:                                     ; preds = %2
  %21 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 1
  %22 = load %struct._ftsent*, %struct._ftsent** %21, align 8
  %23 = icmp eq %struct._ftsent* %22, null
  br i1 %23, label %53, label %24

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %22, i64 0, i32 12
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, -1
  br i1 %27, label %28, label %53

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12
  %30 = bitcast %union.anon* %29 to %struct.cycle_check_state**
  %31 = load %struct.cycle_check_state*, %struct.cycle_check_state** %30, align 8
  %32 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %31, i64 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %28
  tail call void @abort() #15
  unreachable

; <label>:36:                                     ; preds = %28
  %37 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %31, i64 0, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 18, i64 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %38, %40
  br i1 %41, label %42, label %53

; <label>:42:                                     ; preds = %36
  %43 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %31, i64 0, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %48, label %53

; <label>:48:                                     ; preds = %42
  %49 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %22, i64 0, i32 18, i64 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %43, align 8
  %51 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %22, i64 0, i32 18, i64 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %37, align 8
  br label %53

; <label>:53:                                     ; preds = %24, %48, %42, %36, %20, %19
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @fts_safe_changedir(%struct.FTS*, %struct._ftsent* nocapture readonly, i32, i8*) unnamed_addr #6 {
  %5 = alloca %struct.stat, align 8
  %6 = icmp eq i8* %3, null
  br i1 %6, label %26, label %7

; <label>:7:                                      ; preds = %4
  %8 = load i8, i8* %3, align 1
  %9 = zext i8 %8 to i32
  %10 = sub nsw i32 46, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %23

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds i8, i8* %3, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = sub nsw i32 46, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

; <label>:18:                                     ; preds = %12
  %19 = getelementptr inbounds i8, i8* %3, i64 2
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = sub nsw i32 0, %21
  br label %23

; <label>:23:                                     ; preds = %18, %12, %7
  %24 = phi i32 [ %22, %18 ], [ %16, %12 ], [ %10, %7 ]
  %25 = icmp eq i32 %24, 0
  br label %26

; <label>:26:                                     ; preds = %4, %23
  %27 = phi i1 [ false, %4 ], [ %25, %23 ]
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

; <label>:33:                                     ; preds = %26
  %34 = and i32 %30, 512
  %35 = icmp ne i32 %34, 0
  %36 = icmp sgt i32 %2, -1
  %37 = and i1 %36, %35
  br i1 %37, label %38, label %155

; <label>:38:                                     ; preds = %33
  %39 = tail call i32 @close(i32 %2) #11
  br label %155

; <label>:40:                                     ; preds = %26
  %41 = icmp sgt i32 %2, -1
  %42 = xor i1 %27, true
  %43 = or i1 %41, %42
  %44 = and i32 %30, 512
  %45 = icmp eq i32 %44, 0
  %46 = or i1 %43, %45
  br i1 %46, label %55, label %47

; <label>:47:                                     ; preds = %40
  %48 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %49 = tail call zeroext i1 @i_ring_empty(%struct.I_ring* %48) #14
  br i1 %49, label %55, label %50

; <label>:50:                                     ; preds = %47
  %51 = tail call i32 @i_ring_pop(%struct.I_ring* %48) #11
  %52 = icmp sgt i32 %51, -1
  %53 = select i1 %52, i8* null, i8* %3
  %54 = select i1 %52, i32 %51, i32 %2
  br label %55

; <label>:55:                                     ; preds = %40, %47, %50
  %56 = phi i8 [ %28, %47 ], [ 1, %50 ], [ %28, %40 ]
  %57 = phi i8* [ %3, %47 ], [ %53, %50 ], [ %3, %40 ]
  %58 = phi i32 [ %2, %47 ], [ %54, %50 ], [ %2, %40 ]
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %81

; <label>:60:                                     ; preds = %55
  %61 = load i32, i32* %29, align 8
  %62 = shl i32 %61, 13
  %63 = and i32 %62, 131072
  %64 = shl i32 %61, 7
  %65 = and i32 %64, 262144
  %66 = or i32 %63, %65
  %67 = or i32 %66, 67840
  %68 = and i32 %61, 512
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

; <label>:70:                                     ; preds = %60
  %71 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = tail call i32 (i32, i8*, i32, ...) @openat_safer(i32 %72, i8* %57, i32 %67) #11
  br label %76

; <label>:74:                                     ; preds = %60
  %75 = tail call i32 (i8*, i32, ...) @open_safer(i8* %57, i32 %67) #11
  br label %76

; <label>:76:                                     ; preds = %74, %70
  %77 = phi i32 [ %73, %70 ], [ %75, %74 ]
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %79, label %155

; <label>:79:                                     ; preds = %76
  %80 = tail call i32 @set_cloexec_flag(i32 %77, i1 zeroext true) #11
  br label %81

; <label>:81:                                     ; preds = %79, %55
  %82 = phi i32 [ %77, %79 ], [ %58, %55 ]
  %83 = load i32, i32* %29, align 8
  %84 = and i32 %83, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %99

; <label>:86:                                     ; preds = %81
  %87 = icmp eq i8* %57, null
  br i1 %87, label %120, label %88

; <label>:88:                                     ; preds = %86
  %89 = load i8, i8* %57, align 1
  %90 = icmp eq i8 %89, 46
  br i1 %90, label %91, label %120

; <label>:91:                                     ; preds = %88
  %92 = getelementptr inbounds i8, i8* %57, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = icmp eq i8 %93, 46
  br i1 %94, label %95, label %120

; <label>:95:                                     ; preds = %91
  %96 = getelementptr inbounds i8, i8* %57, i64 2
  %97 = load i8, i8* %96, align 1
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %120

; <label>:99:                                     ; preds = %81, %95
  %100 = bitcast %struct.stat* %5 to i8*
  call void @llvm.lifetime.start(i64 144, i8* nonnull %100) #11
  %101 = call i32 @__fxstat(i32 1, i32 %82, %struct.stat* nonnull %5) #11
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %117

; <label>:103:                                    ; preds = %99
  %104 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 18, i64 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %105, %107
  br i1 %108, label %109, label %115

; <label>:109:                                    ; preds = %103
  %110 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 18, i64 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %111, %113
  br i1 %114, label %118, label %115

; <label>:115:                                    ; preds = %109, %103
  %116 = tail call i32* @__errno_location() #1
  store i32 2, i32* %116, align 4
  br label %117

; <label>:117:                                    ; preds = %115, %99
  call void @llvm.lifetime.end(i64 144, i8* nonnull %100) #11
  br label %149

; <label>:118:                                    ; preds = %109
  call void @llvm.lifetime.end(i64 144, i8* nonnull %100) #11
  %119 = load i32, i32* %29, align 8
  br label %120

; <label>:120:                                    ; preds = %88, %91, %118, %86, %95
  %121 = phi i32 [ %83, %88 ], [ %83, %91 ], [ %119, %118 ], [ %83, %86 ], [ %83, %95 ]
  %122 = and i32 %121, 512
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %147, label %124

; <label>:124:                                    ; preds = %120
  %125 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, %82
  %128 = icmp eq i32 %126, -100
  %129 = or i1 %127, %128
  br i1 %129, label %131, label %130

; <label>:130:                                    ; preds = %124
  call void @abort() #15
  unreachable

; <label>:131:                                    ; preds = %124
  %132 = icmp eq i8 %56, 0
  br i1 %132, label %133, label %139

; <label>:133:                                    ; preds = %131
  %134 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %135 = call i32 @i_ring_push(%struct.I_ring* %134, i32 %126) #11
  %136 = icmp sgt i32 %135, -1
  br i1 %136, label %137, label %146

; <label>:137:                                    ; preds = %133
  %138 = call i32 @close(i32 %135) #11
  br label %146

; <label>:139:                                    ; preds = %131
  %140 = and i32 %121, 4
  %141 = icmp eq i32 %140, 0
  %142 = icmp sgt i32 %126, -1
  %143 = and i1 %141, %142
  br i1 %143, label %144, label %146

; <label>:144:                                    ; preds = %139
  %145 = call i32 @close(i32 %126) #11
  br label %146

; <label>:146:                                    ; preds = %133, %137, %139, %144
  store i32 %82, i32* %125, align 4
  br label %155

; <label>:147:                                    ; preds = %120
  %148 = call i32 @fchdir(i32 %82) #11
  br label %149

; <label>:149:                                    ; preds = %117, %147
  %150 = phi i32 [ %148, %147 ], [ -1, %117 ]
  br i1 %59, label %151, label %155

; <label>:151:                                    ; preds = %149
  %152 = tail call i32* @__errno_location() #1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @close(i32 %82) #11
  store i32 %153, i32* %152, align 4
  br label %155

; <label>:155:                                    ; preds = %76, %149, %151, %33, %38, %146
  %156 = phi i32 [ 0, %146 ], [ 0, %38 ], [ 0, %33 ], [ %150, %151 ], [ %150, %149 ], [ -1, %76 ]
  ret i32 %156
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc %struct._ftsent* @fts_build(%struct.FTS*, i32) unnamed_addr #6 {
  %3 = alloca %struct.statfs, align 8
  %4 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 0
  %5 = load %struct._ftsent*, %struct._ftsent** %4, align 8
  %6 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 3
  %7 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8
  %8 = icmp ne %struct.__dirstream* %7, null
  br i1 %8, label %9, label %21

; <label>:9:                                      ; preds = %2
  %10 = tail call i32 @dirfd(%struct.__dirstream* nonnull %7) #11
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %80

; <label>:12:                                     ; preds = %9
  %13 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8
  %14 = tail call i32 @closedir(%struct.__dirstream* %13)
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8
  %15 = icmp eq i32 %1, 3
  br i1 %15, label %16, label %566

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 15
  store i16 4, i16* %17, align 8
  %18 = tail call i32* @__errno_location() #1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 8
  store i32 %19, i32* %20, align 8
  br label %566

; <label>:21:                                     ; preds = %2
  %22 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 516
  %25 = icmp eq i32 %24, 512
  br i1 %25, label %26, label %29

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %28 = load i32, i32* %27, align 4
  br label %29

; <label>:29:                                     ; preds = %21, %26
  %30 = phi i32 [ %28, %26 ], [ -100, %21 ]
  %31 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 6
  %32 = load i8*, i8** %31, align 8
  %33 = and i32 %23, 16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %43, label %35

; <label>:35:                                     ; preds = %29
  %36 = and i32 %23, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 12
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %43, label %42

; <label>:42:                                     ; preds = %38, %35
  br label %43

; <label>:43:                                     ; preds = %38, %29, %42
  %44 = phi i32 [ 198912, %42 ], [ 67840, %38 ], [ 67840, %29 ]
  %45 = shl i32 %23, 7
  %46 = and i32 %45, 262144
  %47 = or i32 %44, %46
  %48 = tail call i32 (i32, i8*, i32, ...) @openat_safer(i32 %30, i8* %32, i32 %47) #11
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %58, label %50

; <label>:50:                                     ; preds = %43
  %51 = tail call i32 @set_cloexec_flag(i32 %48, i1 zeroext true) #11
  %52 = tail call %struct.__dirstream* @fdopendir(i32 %48) #11
  %53 = icmp eq %struct.__dirstream* %52, null
  br i1 %53, label %54, label %65

; <label>:54:                                     ; preds = %50
  %55 = tail call i32* @__errno_location() #1
  %56 = load i32, i32* %55, align 4
  %57 = tail call i32 @close(i32 %48) #11
  store i32 %56, i32* %55, align 4
  br label %58

; <label>:58:                                     ; preds = %43, %54
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8
  %59 = icmp eq i32 %1, 3
  br i1 %59, label %60, label %566

; <label>:60:                                     ; preds = %58
  %61 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 15
  store i16 4, i16* %61, align 8
  %62 = tail call i32* @__errno_location() #1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 8
  store i32 %63, i32* %64, align 8
  br label %566

; <label>:65:                                     ; preds = %50
  store %struct.__dirstream* %52, %struct.__dirstream** %6, align 8
  %66 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 15
  %67 = load i16, i16* %66, align 8
  %68 = icmp eq i16 %67, 11
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %65
  %70 = tail call fastcc zeroext i16 @fts_stat(%struct.FTS* nonnull %0, %struct._ftsent* nonnull %5, i1 zeroext false)
  store i16 %70, i16* %66, align 8
  br label %80

; <label>:71:                                     ; preds = %65
  %72 = load i32, i32* %22, align 8
  %73 = and i32 %72, 256
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75

; <label>:75:                                     ; preds = %71
  tail call fastcc void @leave_dir(%struct.FTS* nonnull %0, %struct._ftsent* nonnull %5)
  %76 = tail call fastcc zeroext i16 @fts_stat(%struct.FTS* nonnull %0, %struct._ftsent* nonnull %5, i1 zeroext false)
  %77 = tail call fastcc zeroext i1 @enter_dir(%struct.FTS* nonnull %0, %struct._ftsent* nonnull %5)
  br i1 %77, label %80, label %78

; <label>:78:                                     ; preds = %75
  %79 = tail call i32* @__errno_location() #1
  store i32 12, i32* %79, align 4
  br label %566

; <label>:80:                                     ; preds = %9, %71, %69, %75
  %81 = phi i32 [ %10, %9 ], [ %48, %69 ], [ %48, %71 ], [ %48, %75 ]
  %82 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 9
  %83 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %82, align 8
  %84 = icmp ne i32 (%struct._ftsent**, %struct._ftsent**)* %83, null
  %85 = select i1 %84, i64 -1, i64 100000
  %86 = icmp eq i32 %1, 2
  br i1 %86, label %100, label %87

; <label>:87:                                     ; preds = %80
  %88 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, 24
  %91 = icmp eq i32 %90, 24
  br i1 %91, label %92, label %100

; <label>:92:                                     ; preds = %87
  %93 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 18, i64 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = lshr i32 %89, 4
  %96 = and i32 %95, 2
  %97 = xor i32 %96, 2
  %98 = zext i32 %97 to i64
  %99 = sub i64 %94, %98
  br label %100

; <label>:100:                                    ; preds = %87, %80, %92
  %101 = phi i64 [ %99, %92 ], [ 0, %80 ], [ -1, %87 ]
  br i1 %8, label %143, label %102

; <label>:102:                                    ; preds = %100
  %103 = icmp ne i64 %101, 0
  %104 = icmp eq i32 %1, 3
  %105 = or i1 %104, %103
  br i1 %105, label %106, label %143

; <label>:106:                                    ; preds = %102
  %107 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, 512
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

; <label>:111:                                    ; preds = %106
  %112 = tail call i32 @dup_safer(i32 %81) #11
  %113 = icmp sgt i32 %112, -1
  br i1 %113, label %114, label %122

; <label>:114:                                    ; preds = %111
  %115 = tail call i32 @set_cloexec_flag(i32 %112, i1 zeroext true) #11
  br label %118

; <label>:116:                                    ; preds = %106
  %117 = icmp slt i32 %81, 0
  br i1 %117, label %122, label %118

; <label>:118:                                    ; preds = %114, %116
  %119 = phi i32 [ %112, %114 ], [ %81, %116 ]
  %120 = tail call fastcc i32 @fts_safe_changedir(%struct.FTS* nonnull %0, %struct._ftsent* %5, i32 %119, i8* null)
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %143, label %122

; <label>:122:                                    ; preds = %111, %118, %116
  %123 = phi i32 [ %119, %118 ], [ %81, %116 ], [ %112, %111 ]
  %124 = and i1 %104, %103
  br i1 %124, label %125, label %129

; <label>:125:                                    ; preds = %122
  %126 = tail call i32* @__errno_location() #1
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 8
  store i32 %127, i32* %128, align 8
  br label %129

; <label>:129:                                    ; preds = %125, %122
  %130 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 16
  %131 = load i16, i16* %130, align 2
  %132 = or i16 %131, 1
  store i16 %132, i16* %130, align 2
  %133 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8
  %134 = tail call i32 @closedir(%struct.__dirstream* %133)
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8
  %135 = load i32, i32* %107, align 8
  %136 = and i32 %135, 512
  %137 = icmp ne i32 %136, 0
  %138 = icmp sgt i32 %123, -1
  %139 = and i1 %138, %137
  br i1 %139, label %140, label %142

; <label>:140:                                    ; preds = %129
  %141 = tail call i32 @close(i32 %123) #11
  br label %142

; <label>:142:                                    ; preds = %140, %129
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8
  br label %143

; <label>:143:                                    ; preds = %102, %118, %100, %142
  %144 = phi i1 [ true, %142 ], [ false, %100 ], [ false, %118 ], [ true, %102 ]
  %145 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 7
  %146 = load i8*, i8** %145, align 8
  %147 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 10
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %148, -1
  %150 = getelementptr inbounds i8, i8* %146, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = icmp eq i8 %151, 47
  %153 = select i1 %152, i64 %149, i64 %148
  %154 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, 4
  %157 = icmp eq i32 %156, 0
  %158 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  br i1 %157, label %163, label %159

; <label>:159:                                    ; preds = %143
  %160 = load i8*, i8** %158, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 %153
  %162 = getelementptr inbounds i8, i8* %161, i64 1
  store i8 47, i8* %161, align 1
  br label %163

; <label>:163:                                    ; preds = %143, %159
  %164 = phi i8* [ %162, %159 ], [ null, %143 ]
  %165 = add i64 %153, 1
  %166 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 7
  %167 = load i64, i64* %166, align 8
  %168 = sub i64 %167, %165
  %169 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 12
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, 1
  %172 = bitcast i8** %158 to i64*
  %173 = bitcast %struct.FTS* %0 to i64*
  %174 = add i64 %153, 258
  br label %175

; <label>:175:                                    ; preds = %391, %163
  %176 = phi i64 [ %295, %391 ], [ %168, %163 ]
  %177 = phi i8* [ %296, %391 ], [ %164, %163 ]
  %178 = phi i8 [ %297, %391 ], [ 0, %163 ]
  %179 = phi %struct._ftsent* [ %224, %391 ], [ null, %163 ]
  %180 = phi i64 [ %393, %391 ], [ 0, %163 ]
  %181 = phi %struct._ftsent* [ %392, %391 ], [ null, %163 ]
  %182 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8
  %183 = icmp eq %struct.__dirstream* %182, null
  br i1 %183, label %401, label %184

; <label>:184:                                    ; preds = %175
  br label %185

; <label>:185:                                    ; preds = %184, %210
  %186 = phi %struct.__dirstream* [ %211, %210 ], [ %182, %184 ]
  %187 = tail call i32* @__errno_location() #1
  store i32 0, i32* %187, align 4
  %188 = tail call %struct.dirent* @readdir(%struct.__dirstream* nonnull %186) #11
  %189 = icmp eq %struct.dirent* %188, null
  br i1 %189, label %190, label %199

; <label>:190:                                    ; preds = %185
  %191 = load i32, i32* %187, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %395, label %193

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 8
  store i32 %191, i32* %194, align 8
  %195 = icmp ne i64 %180, 0
  %196 = or i1 %8, %195
  %197 = select i1 %196, i16 7, i16 4
  %198 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 15
  store i16 %197, i16* %198, align 8
  br label %395

; <label>:199:                                    ; preds = %185
  %200 = load i32, i32* %154, align 8
  %201 = and i32 %200, 32
  %202 = icmp eq i32 %201, 0
  %203 = getelementptr inbounds %struct.dirent, %struct.dirent* %188, i64 0, i32 4, i64 0
  br i1 %202, label %204, label %217

; <label>:204:                                    ; preds = %199
  %205 = load i8, i8* %203, align 1
  %206 = icmp eq i8 %205, 46
  br i1 %206, label %207, label %217

; <label>:207:                                    ; preds = %204
  %208 = getelementptr inbounds %struct.dirent, %struct.dirent* %188, i64 0, i32 4, i64 1
  %209 = load i8, i8* %208, align 1
  switch i8 %209, label %217 [
    i8 0, label %210
    i8 46, label %213
  ]

; <label>:210:                                    ; preds = %207, %213
  %211 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8
  %212 = icmp eq %struct.__dirstream* %211, null
  br i1 %212, label %400, label %185

; <label>:213:                                    ; preds = %207
  %214 = getelementptr inbounds %struct.dirent, %struct.dirent* %188, i64 0, i32 4, i64 2
  %215 = load i8, i8* %214, align 1
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %210, label %217

; <label>:217:                                    ; preds = %207, %213, %204, %199
  %218 = tail call i64 @strlen(i8* %203) #14
  %219 = add i64 %218, 272
  %220 = and i64 %219, -8
  %221 = tail call noalias i8* @malloc(i64 %220) #11
  %222 = icmp eq i8* %221, null
  br i1 %222, label %256, label %223

; <label>:223:                                    ; preds = %217
  %224 = bitcast i8* %221 to %struct._ftsent*
  %225 = getelementptr inbounds i8, i8* %221, i64 264
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %225, i8* %203, i64 %218, i32 1, i1 false) #11
  %226 = getelementptr inbounds i8, i8* %225, i64 %218
  store i8 0, i8* %226, align 1
  %227 = getelementptr inbounds i8, i8* %221, i64 96
  %228 = bitcast i8* %227 to i64*
  store i64 %218, i64* %228, align 8
  %229 = getelementptr inbounds i8, i8* %221, i64 80
  %230 = bitcast i8* %229 to %struct.FTS**
  store %struct.FTS* %0, %struct.FTS** %230, align 8
  %231 = load i64, i64* %172, align 8
  %232 = getelementptr inbounds i8, i8* %221, i64 56
  %233 = bitcast i8* %232 to i64*
  store i64 %231, i64* %233, align 8
  %234 = getelementptr inbounds i8, i8* %221, i64 64
  %235 = bitcast i8* %234 to i32*
  store i32 0, i32* %235, align 8
  %236 = getelementptr inbounds i8, i8* %221, i64 24
  %237 = bitcast i8* %236 to %struct.__dirstream**
  store %struct.__dirstream* null, %struct.__dirstream** %237, align 8
  %238 = getelementptr inbounds i8, i8* %221, i64 114
  %239 = bitcast i8* %238 to i16*
  store i16 0, i16* %239, align 2
  %240 = getelementptr inbounds i8, i8* %221, i64 116
  %241 = bitcast i8* %240 to i16*
  store i16 3, i16* %241, align 4
  %242 = getelementptr inbounds i8, i8* %221, i64 32
  tail call void @llvm.memset.p0i8.i64(i8* %242, i8 0, i64 16, i32 8, i1 false) #11
  %243 = icmp ult i64 %218, %176
  %244 = inttoptr i64 %231 to i8*
  br i1 %243, label %294, label %245

; <label>:245:                                    ; preds = %223
  %246 = load i64, i64* %166, align 8
  %247 = add i64 %174, %218
  %248 = add i64 %247, %246
  %249 = icmp ult i64 %248, %246
  br i1 %249, label %250, label %251

; <label>:250:                                    ; preds = %245
  tail call void @free(i8* %244) #11
  store i8* null, i8** %158, align 8
  store i32 36, i32* %187, align 4
  br label %257

; <label>:251:                                    ; preds = %245
  store i64 %248, i64* %166, align 8
  %252 = tail call i8* @realloc(i8* %244, i64 %248) #11
  %253 = icmp eq i8* %252, null
  br i1 %253, label %254, label %281

; <label>:254:                                    ; preds = %251
  %255 = load i8*, i8** %158, align 8
  tail call void @free(i8* %255) #11
  store i8* null, i8** %158, align 8
  br label %257

; <label>:256:                                    ; preds = %217
  br label %257

; <label>:257:                                    ; preds = %256, %254, %250
  %258 = phi i8* [ %221, %250 ], [ %221, %254 ], [ null, %256 ]
  %259 = load i32, i32* %187, align 4
  tail call void @free(i8* %258) #11
  %260 = icmp eq %struct._ftsent* %181, null
  br i1 %260, label %275, label %261

; <label>:261:                                    ; preds = %257
  br label %262

; <label>:262:                                    ; preds = %261, %271
  %263 = phi %struct._ftsent* [ %265, %271 ], [ %181, %261 ]
  %264 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 2
  %265 = load %struct._ftsent*, %struct._ftsent** %264, align 8
  %266 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 3
  %267 = load %struct.__dirstream*, %struct.__dirstream** %266, align 8
  %268 = icmp eq %struct.__dirstream* %267, null
  br i1 %268, label %271, label %269

; <label>:269:                                    ; preds = %262
  %270 = tail call i32 @closedir(%struct.__dirstream* nonnull %267) #11
  br label %271

; <label>:271:                                    ; preds = %269, %262
  %272 = bitcast %struct._ftsent* %263 to i8*
  tail call void @free(i8* %272) #11
  %273 = icmp eq %struct._ftsent* %265, null
  br i1 %273, label %274, label %262

; <label>:274:                                    ; preds = %271
  br label %275

; <label>:275:                                    ; preds = %274, %257
  %276 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8
  %277 = tail call i32 @closedir(%struct.__dirstream* %276)
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8
  %278 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 15
  store i16 7, i16* %278, align 8
  %279 = load i32, i32* %154, align 8
  %280 = or i32 %279, 16384
  store i32 %280, i32* %154, align 8
  store i32 %259, i32* %187, align 4
  br label %566

; <label>:281:                                    ; preds = %251
  store i8* %252, i8** %158, align 8
  %282 = icmp eq i8* %244, %252
  br i1 %282, label %289, label %283

; <label>:283:                                    ; preds = %281
  %284 = load i32, i32* %154, align 8
  %285 = and i32 %284, 4
  %286 = icmp eq i32 %285, 0
  %287 = getelementptr inbounds i8, i8* %252, i64 %165
  %288 = select i1 %286, i8* %177, i8* %287
  br label %289

; <label>:289:                                    ; preds = %283, %281
  %290 = phi i8* [ %177, %281 ], [ %288, %283 ]
  %291 = phi i8 [ %178, %281 ], [ 1, %283 ]
  %292 = load i64, i64* %166, align 8
  %293 = sub i64 %292, %165
  br label %294

; <label>:294:                                    ; preds = %223, %289
  %295 = phi i64 [ %293, %289 ], [ %176, %223 ]
  %296 = phi i8* [ %290, %289 ], [ %177, %223 ]
  %297 = phi i8 [ %291, %289 ], [ %178, %223 ]
  %298 = add i64 %218, %165
  %299 = icmp ult i64 %298, %165
  br i1 %299, label %300, label %322

; <label>:300:                                    ; preds = %294
  tail call void @free(i8* nonnull %221) #11
  %301 = icmp eq %struct._ftsent* %181, null
  br i1 %301, label %316, label %302

; <label>:302:                                    ; preds = %300
  br label %303

; <label>:303:                                    ; preds = %302, %312
  %304 = phi %struct._ftsent* [ %306, %312 ], [ %181, %302 ]
  %305 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %304, i64 0, i32 2
  %306 = load %struct._ftsent*, %struct._ftsent** %305, align 8
  %307 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %304, i64 0, i32 3
  %308 = load %struct.__dirstream*, %struct.__dirstream** %307, align 8
  %309 = icmp eq %struct.__dirstream* %308, null
  br i1 %309, label %312, label %310

; <label>:310:                                    ; preds = %303
  %311 = tail call i32 @closedir(%struct.__dirstream* nonnull %308) #11
  br label %312

; <label>:312:                                    ; preds = %310, %303
  %313 = bitcast %struct._ftsent* %304 to i8*
  tail call void @free(i8* %313) #11
  %314 = icmp eq %struct._ftsent* %306, null
  br i1 %314, label %315, label %303

; <label>:315:                                    ; preds = %312
  br label %316

; <label>:316:                                    ; preds = %315, %300
  %317 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8
  %318 = tail call i32 @closedir(%struct.__dirstream* %317)
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8
  %319 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 15
  store i16 7, i16* %319, align 8
  %320 = load i32, i32* %154, align 8
  %321 = or i32 %320, 16384
  store i32 %321, i32* %154, align 8
  store i32 36, i32* %187, align 4
  br label %566

; <label>:322:                                    ; preds = %294
  %323 = getelementptr inbounds i8, i8* %221, i64 88
  %324 = bitcast i8* %323 to i64*
  store i64 %171, i64* %324, align 8
  %325 = load i64, i64* %173, align 8
  %326 = getelementptr inbounds i8, i8* %221, i64 8
  %327 = bitcast i8* %326 to i64*
  store i64 %325, i64* %327, align 8
  %328 = getelementptr inbounds i8, i8* %221, i64 72
  %329 = bitcast i8* %328 to i64*
  store i64 %298, i64* %329, align 8
  %330 = getelementptr inbounds %struct.dirent, %struct.dirent* %188, i64 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = getelementptr inbounds i8, i8* %221, i64 128
  %333 = bitcast i8* %332 to i64*
  store i64 %331, i64* %333, align 8
  %334 = load i32, i32* %154, align 8
  %335 = and i32 %334, 4
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %343, label %337

; <label>:337:                                    ; preds = %322
  %338 = load i64, i64* %233, align 8
  %339 = getelementptr inbounds i8, i8* %221, i64 48
  %340 = bitcast i8* %339 to i64*
  store i64 %338, i64* %340, align 8
  %341 = load i64, i64* %228, align 8
  %342 = add i64 %341, 1
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %296, i8* nonnull %225, i64 %342, i32 1, i1 false)
  br label %346

; <label>:343:                                    ; preds = %322
  %344 = getelementptr inbounds i8, i8* %221, i64 48
  %345 = bitcast i8* %344 to i8**
  store i8* %225, i8** %345, align 8
  br label %346

; <label>:346:                                    ; preds = %343, %337
  %347 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %82, align 8
  %348 = icmp ne i32 (%struct._ftsent**, %struct._ftsent**)* %347, null
  %349 = load i32, i32* %154, align 8
  %350 = and i32 %349, 1024
  %351 = icmp eq i32 %350, 0
  %352 = and i1 %348, %351
  br i1 %352, label %380, label %353

; <label>:353:                                    ; preds = %346
  %354 = and i32 %349, 24
  %355 = icmp eq i32 %354, 24
  %356 = getelementptr inbounds %struct.dirent, %struct.dirent* %188, i64 0, i32 3
  %357 = load i8, i8* %356, align 2
  br i1 %355, label %358, label %362

; <label>:358:                                    ; preds = %353
  %359 = icmp ne i8 %357, 4
  %360 = icmp ne i8 %357, 0
  %361 = and i1 %359, %360
  br label %362

; <label>:362:                                    ; preds = %353, %358
  %363 = phi i1 [ %361, %358 ], [ false, %353 ]
  %364 = getelementptr inbounds i8, i8* %221, i64 112
  %365 = bitcast i8* %364 to i16*
  store i16 11, i16* %365, align 8
  %366 = zext i8 %357 to i32
  %367 = add nsw i32 %366, -1
  %368 = icmp ult i32 %367, 12
  br i1 %368, label %369, label %373

; <label>:369:                                    ; preds = %362
  %370 = sext i32 %367 to i64
  %371 = getelementptr inbounds [12 x i32], [12 x i32]* @switch.table.364, i64 0, i64 %370
  %372 = load i32, i32* %371, align 4
  br label %373

; <label>:373:                                    ; preds = %369, %362
  %374 = phi i32 [ %372, %369 ], [ 0, %362 ]
  %375 = getelementptr inbounds i8, i8* %221, i64 144
  %376 = bitcast i8* %375 to i32*
  store i32 %374, i32* %376, align 8
  %377 = select i1 %363, i64 1, i64 2
  %378 = getelementptr inbounds i8, i8* %221, i64 168
  %379 = bitcast i8* %378 to i64*
  store i64 %377, i64* %379, align 8
  br label %384

; <label>:380:                                    ; preds = %346
  %381 = tail call fastcc zeroext i16 @fts_stat(%struct.FTS* nonnull %0, %struct._ftsent* nonnull %224, i1 zeroext false)
  %382 = getelementptr inbounds i8, i8* %221, i64 112
  %383 = bitcast i8* %382 to i16*
  store i16 %381, i16* %383, align 8
  br label %384

; <label>:384:                                    ; preds = %373, %380
  %385 = getelementptr inbounds i8, i8* %221, i64 16
  %386 = bitcast i8* %385 to %struct._ftsent**
  store %struct._ftsent* null, %struct._ftsent** %386, align 8
  %387 = icmp eq %struct._ftsent* %181, null
  br i1 %387, label %391, label %388

; <label>:388:                                    ; preds = %384
  %389 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %179, i64 0, i32 2
  %390 = bitcast %struct._ftsent** %389 to i8**
  store i8* %221, i8** %390, align 8
  br label %391

; <label>:391:                                    ; preds = %388, %384
  %392 = phi %struct._ftsent* [ %181, %388 ], [ %224, %384 ]
  %393 = add nuw i64 %180, 1
  %394 = icmp ugt i64 %85, %393
  br i1 %394, label %175, label %401

; <label>:395:                                    ; preds = %193, %190
  %396 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8
  %397 = icmp eq %struct.__dirstream* %396, null
  br i1 %397, label %406, label %398

; <label>:398:                                    ; preds = %395
  %399 = tail call i32 @closedir(%struct.__dirstream* nonnull %396)
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8
  br label %406

; <label>:400:                                    ; preds = %210
  br label %406

; <label>:401:                                    ; preds = %391, %175
  %402 = phi i8* [ %177, %175 ], [ %296, %391 ]
  %403 = phi i8 [ %178, %175 ], [ %297, %391 ]
  %404 = phi i64 [ %180, %175 ], [ %393, %391 ]
  %405 = phi %struct._ftsent* [ %181, %175 ], [ %392, %391 ]
  br label %406

; <label>:406:                                    ; preds = %401, %400, %395, %398
  %407 = phi i8* [ %177, %398 ], [ %177, %395 ], [ %177, %400 ], [ %402, %401 ]
  %408 = phi i8 [ %178, %398 ], [ %178, %395 ], [ %178, %400 ], [ %403, %401 ]
  %409 = phi i64 [ %180, %398 ], [ %180, %395 ], [ %180, %400 ], [ %404, %401 ]
  %410 = phi %struct._ftsent* [ %181, %398 ], [ %181, %395 ], [ %181, %400 ], [ %405, %401 ]
  %411 = and i8 %408, 1
  %412 = icmp eq i8 %411, 0
  br i1 %412, label %466, label %413

; <label>:413:                                    ; preds = %406
  %414 = load i8*, i8** %158, align 8
  %415 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 1
  %416 = load %struct._ftsent*, %struct._ftsent** %415, align 8
  %417 = icmp eq %struct._ftsent* %416, null
  br i1 %417, label %420, label %418

; <label>:418:                                    ; preds = %413
  br label %425

; <label>:419:                                    ; preds = %438
  br label %420

; <label>:420:                                    ; preds = %419, %413
  %421 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %410, i64 0, i32 12
  %422 = load i64, i64* %421, align 8
  %423 = icmp sgt i64 %422, -1
  br i1 %423, label %424, label %466

; <label>:424:                                    ; preds = %420
  br label %442

; <label>:425:                                    ; preds = %418, %438
  %426 = phi %struct._ftsent* [ %440, %438 ], [ %416, %418 ]
  %427 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %426, i64 0, i32 6
  %428 = load i8*, i8** %427, align 8
  %429 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %426, i64 0, i32 19, i64 0
  %430 = icmp eq i8* %428, %429
  %431 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %426, i64 0, i32 7
  br i1 %430, label %438, label %432

; <label>:432:                                    ; preds = %425
  %433 = bitcast i8** %431 to i64*
  %434 = load i64, i64* %433, align 8
  %435 = ptrtoint i8* %428 to i64
  %436 = sub i64 %435, %434
  %437 = getelementptr inbounds i8, i8* %414, i64 %436
  store i8* %437, i8** %427, align 8
  br label %438

; <label>:438:                                    ; preds = %432, %425
  store i8* %414, i8** %431, align 8
  %439 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %426, i64 0, i32 2
  %440 = load %struct._ftsent*, %struct._ftsent** %439, align 8
  %441 = icmp eq %struct._ftsent* %440, null
  br i1 %441, label %419, label %425

; <label>:442:                                    ; preds = %424, %455
  %443 = phi %struct._ftsent* [ %461, %455 ], [ %410, %424 ]
  %444 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %443, i64 0, i32 6
  %445 = load i8*, i8** %444, align 8
  %446 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %443, i64 0, i32 19, i64 0
  %447 = icmp eq i8* %445, %446
  %448 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %443, i64 0, i32 7
  br i1 %447, label %455, label %449

; <label>:449:                                    ; preds = %442
  %450 = bitcast i8** %448 to i64*
  %451 = load i64, i64* %450, align 8
  %452 = ptrtoint i8* %445 to i64
  %453 = sub i64 %452, %451
  %454 = getelementptr inbounds i8, i8* %414, i64 %453
  store i8* %454, i8** %444, align 8
  br label %455

; <label>:455:                                    ; preds = %449, %442
  store i8* %414, i8** %448, align 8
  %456 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %443, i64 0, i32 2
  %457 = load %struct._ftsent*, %struct._ftsent** %456, align 8
  %458 = icmp ne %struct._ftsent* %457, null
  %459 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %443, i64 0, i32 1
  %460 = select i1 %458, %struct._ftsent** %456, %struct._ftsent** %459
  %461 = load %struct._ftsent*, %struct._ftsent** %460, align 8
  %462 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %461, i64 0, i32 12
  %463 = load i64, i64* %462, align 8
  %464 = icmp sgt i64 %463, -1
  br i1 %464, label %442, label %465

; <label>:465:                                    ; preds = %455
  br label %466

; <label>:466:                                    ; preds = %465, %420, %406
  %467 = load i32, i32* %154, align 8
  %468 = and i32 %467, 4
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %477, label %470

; <label>:470:                                    ; preds = %466
  %471 = load i64, i64* %166, align 8
  %472 = icmp eq i64 %165, %471
  %473 = icmp eq i64 %409, 0
  %474 = or i1 %473, %472
  %475 = getelementptr inbounds i8, i8* %407, i64 -1
  %476 = select i1 %474, i8* %475, i8* %407
  store i8 0, i8* %476, align 1
  br label %477

; <label>:477:                                    ; preds = %466, %470
  %478 = or i1 %8, %144
  br i1 %478, label %512, label %479

; <label>:479:                                    ; preds = %477
  %480 = icmp ne i32 %1, 1
  %481 = icmp ne i64 %409, 0
  %482 = and i1 %480, %481
  br i1 %482, label %535, label %483

; <label>:483:                                    ; preds = %479
  %484 = load i64, i64* %169, align 8
  %485 = icmp eq i64 %484, 0
  br i1 %485, label %486, label %489

; <label>:486:                                    ; preds = %483
  %487 = tail call fastcc i32 @restore_initial_cwd(%struct.FTS* nonnull %0)
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %512, label %494

; <label>:489:                                    ; preds = %483
  %490 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 1
  %491 = load %struct._ftsent*, %struct._ftsent** %490, align 8
  %492 = tail call fastcc i32 @fts_safe_changedir(%struct.FTS* nonnull %0, %struct._ftsent* %491, i32 -1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.363, i64 0, i64 0))
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %512, label %494

; <label>:494:                                    ; preds = %486, %489
  %495 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 15
  store i16 7, i16* %495, align 8
  %496 = load i32, i32* %154, align 8
  %497 = or i32 %496, 16384
  store i32 %497, i32* %154, align 8
  %498 = icmp eq %struct._ftsent* %410, null
  br i1 %498, label %566, label %499

; <label>:499:                                    ; preds = %494
  br label %500

; <label>:500:                                    ; preds = %499, %509
  %501 = phi %struct._ftsent* [ %503, %509 ], [ %410, %499 ]
  %502 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %501, i64 0, i32 2
  %503 = load %struct._ftsent*, %struct._ftsent** %502, align 8
  %504 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %501, i64 0, i32 3
  %505 = load %struct.__dirstream*, %struct.__dirstream** %504, align 8
  %506 = icmp eq %struct.__dirstream* %505, null
  br i1 %506, label %509, label %507

; <label>:507:                                    ; preds = %500
  %508 = tail call i32 @closedir(%struct.__dirstream* nonnull %505) #11
  br label %509

; <label>:509:                                    ; preds = %507, %500
  %510 = bitcast %struct._ftsent* %501 to i8*
  tail call void @free(i8* %510) #11
  %511 = icmp eq %struct._ftsent* %503, null
  br i1 %511, label %565, label %500

; <label>:512:                                    ; preds = %477, %486, %489
  %513 = icmp eq i64 %409, 0
  br i1 %513, label %514, label %535

; <label>:514:                                    ; preds = %512
  %515 = icmp eq i32 %1, 3
  br i1 %515, label %516, label %520

; <label>:516:                                    ; preds = %514
  %517 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 15
  %518 = load i16, i16* %517, align 8
  switch i16 %518, label %519 [
    i16 4, label %520
    i16 7, label %520
  ]

; <label>:519:                                    ; preds = %516
  store i16 6, i16* %517, align 8
  br label %520

; <label>:520:                                    ; preds = %516, %516, %519, %514
  %521 = icmp eq %struct._ftsent* %410, null
  br i1 %521, label %566, label %522

; <label>:522:                                    ; preds = %520
  br label %523

; <label>:523:                                    ; preds = %522, %532
  %524 = phi %struct._ftsent* [ %526, %532 ], [ %410, %522 ]
  %525 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %524, i64 0, i32 2
  %526 = load %struct._ftsent*, %struct._ftsent** %525, align 8
  %527 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %524, i64 0, i32 3
  %528 = load %struct.__dirstream*, %struct.__dirstream** %527, align 8
  %529 = icmp eq %struct.__dirstream* %528, null
  br i1 %529, label %532, label %530

; <label>:530:                                    ; preds = %523
  %531 = tail call i32 @closedir(%struct.__dirstream* nonnull %528) #11
  br label %532

; <label>:532:                                    ; preds = %530, %523
  %533 = bitcast %struct._ftsent* %524 to i8*
  tail call void @free(i8* %533) #11
  %534 = icmp eq %struct._ftsent* %526, null
  br i1 %534, label %564, label %523

; <label>:535:                                    ; preds = %479, %512
  %536 = icmp ugt i64 %409, 10000
  br i1 %536, label %537, label %556

; <label>:537:                                    ; preds = %535
  %538 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %82, align 8
  %539 = icmp eq i32 (%struct._ftsent**, %struct._ftsent**)* %538, null
  br i1 %539, label %540, label %556

; <label>:540:                                    ; preds = %537
  %541 = load i32, i32* %154, align 8
  %542 = and i32 %541, 512
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %556, label %544

; <label>:544:                                    ; preds = %540
  %545 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %546 = load i32, i32* %545, align 4
  %547 = bitcast %struct.statfs* %3 to i8*
  call void @llvm.lifetime.start(i64 120, i8* nonnull %547) #11
  %548 = call i32 @fstatfs(i32 %546, %struct.statfs* nonnull %3) #11
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %550, label %554

; <label>:550:                                    ; preds = %544
  %551 = getelementptr inbounds %struct.statfs, %struct.statfs* %3, i64 0, i32 0
  %552 = load i64, i64* %551, align 8
  switch i64 %552, label %554 [
    i64 16914836, label %553
    i64 26985, label %553
  ]

; <label>:553:                                    ; preds = %550, %550
  call void @llvm.lifetime.end(i64 120, i8* nonnull %547) #11
  br label %556

; <label>:554:                                    ; preds = %550, %544
  call void @llvm.lifetime.end(i64 120, i8* nonnull %547) #11
  store i32 (%struct._ftsent**, %struct._ftsent**)* @fts_compare_ino, i32 (%struct._ftsent**, %struct._ftsent**)** %82, align 8
  %555 = call fastcc %struct._ftsent* @fts_sort(%struct.FTS* nonnull %0, %struct._ftsent* %410, i64 %409)
  store i32 (%struct._ftsent**, %struct._ftsent**)* null, i32 (%struct._ftsent**, %struct._ftsent**)** %82, align 8
  br label %556

; <label>:556:                                    ; preds = %553, %540, %537, %554, %535
  %557 = phi %struct._ftsent* [ %410, %537 ], [ %555, %554 ], [ %410, %553 ], [ %410, %540 ], [ %410, %535 ]
  %558 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %82, align 8
  %559 = icmp ne i32 (%struct._ftsent**, %struct._ftsent**)* %558, null
  %560 = icmp ugt i64 %409, 1
  %561 = and i1 %560, %559
  br i1 %561, label %562, label %566

; <label>:562:                                    ; preds = %556
  %563 = call fastcc %struct._ftsent* @fts_sort(%struct.FTS* nonnull %0, %struct._ftsent* %557, i64 %409)
  br label %566

; <label>:564:                                    ; preds = %532
  br label %566

; <label>:565:                                    ; preds = %509
  br label %566

; <label>:566:                                    ; preds = %565, %564, %275, %316, %520, %494, %12, %556, %562, %58, %60, %16, %78
  %567 = phi %struct._ftsent* [ null, %78 ], [ null, %16 ], [ null, %60 ], [ null, %58 ], [ %563, %562 ], [ %557, %556 ], [ null, %12 ], [ null, %494 ], [ null, %520 ], [ null, %316 ], [ null, %275 ], [ null, %564 ], [ null, %565 ]
  ret %struct._ftsent* %567
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @restore_initial_cwd(%struct.FTS*) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %3 = load i32, i32* %2, align 8
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %23

; <label>:6:                                      ; preds = %1
  %7 = and i32 %3, 512
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %13 = tail call i32 @i_ring_push(%struct.I_ring* %12, i32 %11) #11
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %9
  %16 = tail call i32 @close(i32 %13) #11
  br label %17

; <label>:17:                                     ; preds = %9, %15
  store i32 -100, i32* %10, align 4
  br label %23

; <label>:18:                                     ; preds = %6
  %19 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = tail call i32 @fchdir(i32 %20) #11
  %22 = icmp ne i32 %21, 0
  br label %23

; <label>:23:                                     ; preds = %17, %18, %1
  %24 = phi i1 [ false, %1 ], [ false, %17 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %27 = tail call zeroext i1 @i_ring_empty(%struct.I_ring* %26) #14
  br i1 %27, label %37, label %28

; <label>:28:                                     ; preds = %23
  br label %29

; <label>:29:                                     ; preds = %28, %34
  %30 = tail call i32 @i_ring_pop(%struct.I_ring* %26) #11
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %29
  %33 = tail call i32 @close(i32 %30) #11
  br label %34

; <label>:34:                                     ; preds = %32, %29
  %35 = tail call zeroext i1 @i_ring_empty(%struct.I_ring* %26) #14
  br i1 %35, label %36, label %29

; <label>:36:                                     ; preds = %34
  br label %37

; <label>:37:                                     ; preds = %36, %23
  ret i32 %25
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i64 @LCO_hash(i8* nocapture readonly, i64) #12 {
  %3 = bitcast i8* %0 to i64*
  %4 = load i64, i64* %3, align 8
  %5 = urem i64 %4, %1
  ret i64 %5
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal zeroext i1 @LCO_compare(i8* nocapture readonly, i8* nocapture readonly) #12 {
  %3 = bitcast i8* %0 to i64*
  %4 = load i64, i64* %3, align 8
  %5 = bitcast i8* %1 to i64*
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %4, %6
  ret i1 %7
}

; Function Attrs: nounwind
declare i32 @fstatfs(i32, %struct.statfs*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @enter_dir(%struct.FTS* nocapture readonly, %struct._ftsent*) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %4 = load i32, i32* %3, align 8
  %5 = and i32 %4, 258
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %29, label %7

; <label>:7:                                      ; preds = %2
  %8 = tail call noalias i8* @malloc(i64 24) #11
  %9 = icmp eq i8* %8, null
  br i1 %9, label %38, label %10

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 18, i64 0, i32 0
  %12 = bitcast i64* %11 to <2 x i64>*
  %13 = load <2 x i64>, <2 x i64>* %12, align 8
  %14 = bitcast i8* %8 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %14, align 8
  %15 = getelementptr inbounds i8, i8* %8, i64 16
  %16 = bitcast i8* %15 to %struct._ftsent**
  store %struct._ftsent* %1, %struct._ftsent** %16, align 8
  %17 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12, i32 0
  %18 = load %struct.hash_table*, %struct.hash_table** %17, align 8
  %19 = tail call i8* @hash_insert(%struct.hash_table* %18, i8* nonnull %8) #11
  %20 = icmp eq i8* %19, %8
  br i1 %20, label %38, label %21

; <label>:21:                                     ; preds = %10
  tail call void @free(i8* nonnull %8) #11
  %22 = icmp eq i8* %19, null
  br i1 %22, label %38, label %23

; <label>:23:                                     ; preds = %21
  %24 = getelementptr inbounds i8, i8* %19, i64 16
  %25 = bitcast i8* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = bitcast %struct._ftsent* %1 to i64*
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 15
  store i16 2, i16* %28, align 8
  br label %38

; <label>:29:                                     ; preds = %2
  %30 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12
  %31 = bitcast %union.anon* %30 to %struct.cycle_check_state**
  %32 = load %struct.cycle_check_state*, %struct.cycle_check_state** %31, align 8
  %33 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 18, i64 0
  %34 = tail call zeroext i1 @cycle_check(%struct.cycle_check_state* %32, %struct.stat* %33) #11
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %29
  %36 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 0
  store %struct._ftsent* %1, %struct._ftsent** %36, align 8
  %37 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 15
  store i16 2, i16* %37, align 8
  br label %38

; <label>:38:                                     ; preds = %21, %7, %35, %29, %23, %10
  %39 = phi i1 [ true, %10 ], [ true, %23 ], [ true, %29 ], [ true, %35 ], [ false, %7 ], [ false, %21 ]
  ret i1 %39
}

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i32 @fts_compare_ino(%struct._ftsent** nocapture readonly, %struct._ftsent** nocapture readonly) #12 {
  %3 = load %struct._ftsent*, %struct._ftsent** %0, align 8
  %4 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 18, i64 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load %struct._ftsent*, %struct._ftsent** %1, align 8
  %7 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %6, i64 0, i32 18, i64 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  %10 = icmp ult i64 %8, %5
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @fts_set(%struct.FTS* nocapture readnone, %struct._ftsent* nocapture, i32) local_unnamed_addr #6 {
  %4 = icmp ugt i32 %2, 4
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %3
  %6 = tail call i32* @__errno_location() #1
  store i32 22, i32* %6, align 4
  br label %10

; <label>:7:                                      ; preds = %3
  %8 = trunc i32 %2 to i16
  %9 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 17
  store i16 %8, i16* %9, align 4
  br label %10

; <label>:10:                                     ; preds = %7, %5
  %11 = phi i32 [ 1, %5 ], [ 0, %7 ]
  ret i32 %11
}

; Function Attrs: nounwind sspstrong uwtable
define %struct._ftsent* @fts_children(%struct.FTS*, i32) local_unnamed_addr #6 {
  switch i32 %1, label %3 [
    i32 8192, label %5
    i32 0, label %5
  ]

; <label>:3:                                      ; preds = %2
  %4 = tail call i32* @__errno_location() #1
  store i32 22, i32* %4, align 4
  br label %107

; <label>:5:                                      ; preds = %2, %2
  %6 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 0
  %7 = load %struct._ftsent*, %struct._ftsent** %6, align 8
  %8 = tail call i32* @__errno_location() #1
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 16384
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %107

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i64 0, i32 15
  %15 = load i16, i16* %14, align 8
  switch i16 %15, label %107 [
    i16 9, label %16
    i16 1, label %19
  ]

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i64 0, i32 2
  %18 = load %struct._ftsent*, %struct._ftsent** %17, align 8
  br label %107

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 1
  %21 = load %struct._ftsent*, %struct._ftsent** %20, align 8
  %22 = icmp eq %struct._ftsent* %21, null
  br i1 %22, label %37, label %23

; <label>:23:                                     ; preds = %19
  br label %24

; <label>:24:                                     ; preds = %23, %33
  %25 = phi %struct._ftsent* [ %27, %33 ], [ %21, %23 ]
  %26 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %25, i64 0, i32 2
  %27 = load %struct._ftsent*, %struct._ftsent** %26, align 8
  %28 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %25, i64 0, i32 3
  %29 = load %struct.__dirstream*, %struct.__dirstream** %28, align 8
  %30 = icmp eq %struct.__dirstream* %29, null
  br i1 %30, label %33, label %31

; <label>:31:                                     ; preds = %24
  %32 = tail call i32 @closedir(%struct.__dirstream* nonnull %29) #11
  br label %33

; <label>:33:                                     ; preds = %31, %24
  %34 = bitcast %struct._ftsent* %25 to i8*
  tail call void @free(i8* %34) #11
  %35 = icmp eq %struct._ftsent* %27, null
  br i1 %35, label %36, label %24

; <label>:36:                                     ; preds = %33
  br label %37

; <label>:37:                                     ; preds = %36, %19
  %38 = icmp eq i32 %1, 8192
  br i1 %38, label %39, label %42

; <label>:39:                                     ; preds = %37
  %40 = load i32, i32* %9, align 8
  %41 = or i32 %40, 8192
  store i32 %41, i32* %9, align 8
  br label %42

; <label>:42:                                     ; preds = %37, %39
  %43 = phi i32 [ 2, %39 ], [ 1, %37 ]
  %44 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i64 0, i32 12
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %56

; <label>:47:                                     ; preds = %42
  %48 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i64 0, i32 6
  %49 = load i8*, i8** %48, align 8
  %50 = load i8, i8* %49, align 1
  %51 = icmp eq i8 %50, 47
  br i1 %51, label %56, label %52

; <label>:52:                                     ; preds = %47
  %53 = load i32, i32* %9, align 8
  %54 = and i32 %53, 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

; <label>:56:                                     ; preds = %52, %42, %47
  %57 = tail call fastcc %struct._ftsent* @fts_build(%struct.FTS* %0, i32 %43)
  store %struct._ftsent* %57, %struct._ftsent** %20, align 8
  br label %107

; <label>:58:                                     ; preds = %52
  %59 = shl i32 %53, 13
  %60 = and i32 %59, 131072
  %61 = shl i32 %53, 7
  %62 = and i32 %61, 262144
  %63 = or i32 %60, %62
  %64 = or i32 %63, 67840
  %65 = and i32 %53, 512
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

; <label>:67:                                     ; preds = %58
  %68 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = tail call i32 (i32, i8*, i32, ...) @openat_safer(i32 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.358, i64 0, i64 0), i32 %64) #11
  br label %73

; <label>:71:                                     ; preds = %58
  %72 = tail call i32 (i8*, i32, ...) @open_safer(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.358, i64 0, i64 0), i32 %64) #11
  br label %73

; <label>:73:                                     ; preds = %71, %67
  %74 = phi i32 [ %70, %67 ], [ %72, %71 ]
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %77, label %76

; <label>:76:                                     ; preds = %73
  store %struct._ftsent* null, %struct._ftsent** %20, align 8
  br label %107

; <label>:77:                                     ; preds = %73
  %78 = tail call i32 @set_cloexec_flag(i32 %74, i1 zeroext true) #11
  %79 = tail call fastcc %struct._ftsent* @fts_build(%struct.FTS* nonnull %0, i32 %43)
  store %struct._ftsent* %79, %struct._ftsent** %20, align 8
  %80 = load i32, i32* %9, align 8
  %81 = and i32 %80, 512
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %97, label %83

; <label>:83:                                     ; preds = %77
  %84 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, %74
  %87 = icmp eq i32 %85, -100
  %88 = or i1 %86, %87
  br i1 %88, label %90, label %89

; <label>:89:                                     ; preds = %83
  tail call void @abort() #15
  unreachable

; <label>:90:                                     ; preds = %83
  %91 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %92 = tail call i32 @i_ring_push(%struct.I_ring* %91, i32 %85) #11
  %93 = icmp sgt i32 %92, -1
  br i1 %93, label %94, label %96

; <label>:94:                                     ; preds = %90
  %95 = tail call i32 @close(i32 %92) #11
  br label %96

; <label>:96:                                     ; preds = %90, %94
  store i32 %74, i32* %84, align 4
  br label %105

; <label>:97:                                     ; preds = %77
  %98 = tail call i32 @fchdir(i32 %74) #11
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

; <label>:100:                                    ; preds = %97
  %101 = load i32, i32* %8, align 4
  %102 = tail call i32 @close(i32 %74) #11
  store i32 %101, i32* %8, align 4
  br label %107

; <label>:103:                                    ; preds = %97
  %104 = tail call i32 @close(i32 %74) #11
  br label %105

; <label>:105:                                    ; preds = %103, %96
  %106 = load %struct._ftsent*, %struct._ftsent** %20, align 8
  br label %107

; <label>:107:                                    ; preds = %13, %5, %105, %100, %76, %56, %16, %3
  %108 = phi %struct._ftsent* [ null, %3 ], [ %18, %16 ], [ %57, %56 ], [ null, %76 ], [ %106, %105 ], [ null, %100 ], [ null, %5 ], [ null, %13 ]
  ret %struct._ftsent* %108
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #6 {
  %5 = alloca i32, align 4
  %6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %6) #11
  %7 = icmp eq i32* %0, null
  %8 = select i1 %7, i32* %5, i32* %0
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11
  %10 = icmp ugt i64 %9, -3
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1
  %17 = zext i8 %16 to i32
  store i32 %17, i32* %8, align 4
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %6) #11
  ret i64 %19
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @acl_access_nontrivial(%struct.__acl_ext*) local_unnamed_addr #6 {
  %2 = alloca %struct.__acl_entry_ext*, align 8
  %3 = alloca i32, align 4
  %4 = bitcast %struct.__acl_entry_ext** %2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %4) #11
  %5 = call i32 @acl_get_entry(%struct.__acl_ext* %0, i32 0, %struct.__acl_entry_ext** nonnull %2) #11
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %21

; <label>:7:                                      ; preds = %1
  %8 = bitcast i32* %3 to i8*
  br label %9

; <label>:9:                                      ; preds = %7, %17
  call void @llvm.lifetime.start(i64 4, i8* nonnull %8) #11
  %10 = load %struct.__acl_entry_ext*, %struct.__acl_entry_ext** %2, align 8
  %11 = call i32 @acl_get_tag_type(%struct.__acl_entry_ext* %10, i32* nonnull %3) #11
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %15, label %13

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %3, align 4
  switch i32 %14, label %15 [
    i32 32, label %17
    i32 4, label %17
    i32 1, label %17
  ]

; <label>:15:                                     ; preds = %9, %13
  %16 = phi i32 [ 1, %13 ], [ -1, %9 ]
  call void @llvm.lifetime.end(i64 4, i8* nonnull %8) #11
  br label %21

; <label>:17:                                     ; preds = %13, %13, %13
  call void @llvm.lifetime.end(i64 4, i8* nonnull %8) #11
  %18 = call i32 @acl_get_entry(%struct.__acl_ext* %0, i32 1, %struct.__acl_entry_ext** nonnull %2) #11
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %9, label %20

; <label>:20:                                     ; preds = %17
  br label %21

; <label>:21:                                     ; preds = %20, %1, %15
  %22 = phi i32 [ %16, %15 ], [ %5, %1 ], [ %18, %20 ]
  call void @llvm.lifetime.end(i64 8, i8* nonnull %4) #11
  ret i32 %22
}

declare i32 @acl_get_entry(%struct.__acl_ext*, i32, %struct.__acl_entry_ext**) local_unnamed_addr #3

declare i32 @acl_get_tag_type(%struct.__acl_entry_ext*, i32*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @acl_default_nontrivial(%struct.__acl_ext*) local_unnamed_addr #6 {
  %2 = tail call i32 @acl_entries(%struct.__acl_ext* %0) #11
  %3 = icmp sgt i32 %2, 0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

declare i32 @acl_entries(%struct.__acl_ext*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define void @free_permission_context(%struct.permission_context* nocapture readonly) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.permission_context, %struct.permission_context* %0, i64 0, i32 1
  %3 = load %struct.__acl_ext*, %struct.__acl_ext** %2, align 8
  %4 = icmp eq %struct.__acl_ext* %3, null
  br i1 %4, label %8, label %5

; <label>:5:                                      ; preds = %1
  %6 = bitcast %struct.__acl_ext* %3 to i8*
  %7 = tail call i32 @acl_free(i8* %6) #11
  br label %8

; <label>:8:                                      ; preds = %1, %5
  %9 = getelementptr inbounds %struct.permission_context, %struct.permission_context* %0, i64 0, i32 2
  %10 = load %struct.__acl_ext*, %struct.__acl_ext** %9, align 8
  %11 = icmp eq %struct.__acl_ext* %10, null
  br i1 %11, label %15, label %12

; <label>:12:                                     ; preds = %8
  %13 = bitcast %struct.__acl_ext* %10 to i8*
  %14 = tail call i32 @acl_free(i8* %13) #11
  br label %15

; <label>:15:                                     ; preds = %8, %12
  ret void
}

declare i32 @acl_free(i8*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @get_permissions(i8*, i32, i32, %struct.permission_context* nocapture) local_unnamed_addr #6 {
  %5 = bitcast %struct.permission_context* %3 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 32, i32 8, i1 false)
  %6 = getelementptr inbounds %struct.permission_context, %struct.permission_context* %3, i64 0, i32 0
  store i32 %2, i32* %6, align 8
  %7 = icmp eq i32 %1, -1
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %4
  %9 = tail call %struct.__acl_ext* @acl_get_fd(i32 %1) #11
  br label %12

; <label>:10:                                     ; preds = %4
  %11 = tail call %struct.__acl_ext* @acl_get_file(i8* %0, i32 32768) #11
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = phi %struct.__acl_ext* [ %11, %10 ], [ %9, %8 ]
  %14 = getelementptr inbounds %struct.permission_context, %struct.permission_context* %3, i64 0, i32 1
  store %struct.__acl_ext* %13, %struct.__acl_ext** %14, align 8
  %15 = icmp eq %struct.__acl_ext* %13, null
  br i1 %15, label %16, label %21

; <label>:16:                                     ; preds = %12
  %17 = tail call i32* @__errno_location() #1
  %18 = load i32, i32* %17, align 4
  %19 = tail call zeroext i1 @acl_errno_valid(i32 %18) #1
  %20 = sext i1 %19 to i32
  br label %29

; <label>:21:                                     ; preds = %12
  %22 = and i32 %2, 61440
  %23 = icmp eq i32 %22, 16384
  br i1 %23, label %24, label %28

; <label>:24:                                     ; preds = %21
  %25 = tail call %struct.__acl_ext* @acl_get_file(i8* %0, i32 16384) #11
  %26 = getelementptr inbounds %struct.permission_context, %struct.permission_context* %3, i64 0, i32 2
  store %struct.__acl_ext* %25, %struct.__acl_ext** %26, align 8
  %27 = icmp eq %struct.__acl_ext* %25, null
  br i1 %27, label %29, label %28

; <label>:28:                                     ; preds = %24, %21
  br label %29

; <label>:29:                                     ; preds = %24, %28, %16
  %30 = phi i32 [ %20, %16 ], [ 0, %28 ], [ -1, %24 ]
  ret i32 %30
}

declare %struct.__acl_ext* @acl_get_fd(i32) local_unnamed_addr #3

declare %struct.__acl_ext* @acl_get_file(i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @chmod_or_fchmod(i8* nocapture readonly, i32, i32) local_unnamed_addr #6 {
  %4 = icmp eq i32 %1, -1
  br i1 %4, label %7, label %5

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 @fchmod(i32 %1, i32 %2) #11
  br label %9

; <label>:7:                                      ; preds = %3
  %8 = tail call i32 @chmod(i8* %0, i32 %2) #11
  br label %9

; <label>:9:                                      ; preds = %7, %5
  %10 = phi i32 [ %6, %5 ], [ %8, %7 ]
  ret i32 %10
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_permissions(%struct.permission_context* nocapture, i8*, i32) local_unnamed_addr #6 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start(i64 1, i8* nonnull %4) #11
  store i8 0, i8* %4, align 1
  %5 = getelementptr inbounds %struct.permission_context, %struct.permission_context* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = and i32 %6, 3584
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

; <label>:9:                                      ; preds = %3
  %10 = icmp eq i32 %2, -1
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %9
  %12 = tail call i32 @fchmod(i32 %2, i32 %6) #11
  br label %15

; <label>:13:                                     ; preds = %9
  %14 = tail call i32 @chmod(i8* %1, i32 %6) #11
  br label %15

; <label>:15:                                     ; preds = %11, %13
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %58

; <label>:18:                                     ; preds = %15, %3
  %19 = call fastcc i32 @set_acls(%struct.permission_context* nonnull %0, i8* %1, i32 %2, i32 0, i8* nonnull %4)
  %20 = load i8, i8* %4, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %58

; <label>:22:                                     ; preds = %18
  %23 = icmp eq i32 %19, 0
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %22
  %25 = call fastcc i32 @set_acls(%struct.permission_context* nonnull %0, i8* %1, i32 %2, i32 1, i8* nonnull %4)
  %26 = load i8, i8* %4, align 1
  br label %35

; <label>:27:                                     ; preds = %22
  %28 = tail call i32* @__errno_location() #1
  %29 = load i32, i32* %28, align 4
  %30 = call fastcc i32 @set_acls(%struct.permission_context* nonnull %0, i8* %1, i32 %2, i32 1, i8* nonnull %4)
  %31 = load i8, i8* %4, align 1
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %35, label %33

; <label>:33:                                     ; preds = %27
  %34 = tail call i32* @__errno_location() #1
  store i32 %29, i32* %34, align 4
  br label %35

; <label>:35:                                     ; preds = %24, %33, %27
  %36 = phi i8 [ %31, %33 ], [ %31, %27 ], [ %26, %24 ]
  %37 = phi i32 [ -1, %33 ], [ %30, %27 ], [ %25, %24 ]
  %38 = icmp eq i8 %36, 1
  %39 = or i1 %8, %38
  br i1 %39, label %58, label %40

; <label>:40:                                     ; preds = %35
  %41 = icmp eq i32 %37, 0
  br i1 %41, label %45, label %42

; <label>:42:                                     ; preds = %40
  %43 = tail call i32* @__errno_location() #1
  %44 = load i32, i32* %43, align 4
  br label %45

; <label>:45:                                     ; preds = %40, %42
  %46 = phi i32 [ %44, %42 ], [ 0, %40 ]
  %47 = load i32, i32* %5, align 8
  %48 = icmp eq i32 %2, -1
  br i1 %48, label %51, label %49

; <label>:49:                                     ; preds = %45
  %50 = tail call i32 @fchmod(i32 %2, i32 %47) #11
  br label %53

; <label>:51:                                     ; preds = %45
  %52 = tail call i32 @chmod(i8* %1, i32 %47) #11
  br label %53

; <label>:53:                                     ; preds = %49, %51
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = icmp eq i32 %46, 0
  br i1 %55, label %58, label %56

; <label>:56:                                     ; preds = %53
  %57 = tail call i32* @__errno_location() #1
  store i32 %46, i32* %57, align 4
  br label %58

; <label>:58:                                     ; preds = %18, %35, %53, %56, %15
  %59 = phi i32 [ -1, %15 ], [ %37, %35 ], [ -1, %56 ], [ %54, %53 ], [ %19, %18 ]
  call void @llvm.lifetime.end(i64 1, i8* nonnull %4) #11
  ret i32 %59
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @set_acls(%struct.permission_context* nocapture, i8*, i32, i32, i8* nocapture) unnamed_addr #6 {
  %6 = getelementptr inbounds %struct.permission_context, %struct.permission_context* %0, i64 0, i32 3
  %7 = load i8, i8* %6, align 8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %62

; <label>:9:                                      ; preds = %5
  %10 = icmp ne i32 %3, 0
  %11 = getelementptr inbounds %struct.permission_context, %struct.permission_context* %0, i64 0, i32 1
  %12 = load %struct.__acl_ext*, %struct.__acl_ext** %11, align 8
  %13 = icmp eq %struct.__acl_ext* %12, null
  br i1 %10, label %14, label %23

; <label>:14:                                     ; preds = %9
  br i1 %13, label %18, label %15

; <label>:15:                                     ; preds = %14
  %16 = bitcast %struct.__acl_ext* %12 to i8*
  %17 = tail call i32 @acl_free(i8* %16) #11
  br label %18

; <label>:18:                                     ; preds = %14, %15
  %19 = getelementptr inbounds %struct.permission_context, %struct.permission_context* %0, i64 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = tail call %struct.__acl_ext* @acl_from_mode(i32 %20) #11
  store %struct.__acl_ext* %21, %struct.__acl_ext** %11, align 8
  %22 = icmp eq %struct.__acl_ext* %21, null
  br i1 %22, label %62, label %24

; <label>:23:                                     ; preds = %9
  br i1 %13, label %62, label %24

; <label>:24:                                     ; preds = %18, %23
  %25 = phi %struct.__acl_ext* [ %12, %23 ], [ %21, %18 ]
  %26 = icmp eq i32 %2, -1
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %24
  %28 = tail call i32 @acl_set_fd(i32 %2, %struct.__acl_ext* nonnull %25) #11
  br label %31

; <label>:29:                                     ; preds = %24
  %30 = tail call i32 @acl_set_file(i8* %1, i32 32768, %struct.__acl_ext* nonnull %25) #11
  br label %31

; <label>:31:                                     ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %44, label %34

; <label>:34:                                     ; preds = %31
  %35 = tail call i32* @__errno_location() #1
  %36 = load i32, i32* %35, align 4
  %37 = tail call zeroext i1 @acl_errno_valid(i32 %36) #1
  br i1 %37, label %62, label %38

; <label>:38:                                     ; preds = %34
  store i8 1, i8* %6, align 8
  br i1 %10, label %43, label %39

; <label>:39:                                     ; preds = %38
  %40 = load %struct.__acl_ext*, %struct.__acl_ext** %11, align 8
  %41 = tail call i32 @acl_access_nontrivial(%struct.__acl_ext* %40) #11
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %62

; <label>:43:                                     ; preds = %39, %38
  br label %62

; <label>:44:                                     ; preds = %31
  store i8 1, i8* %4, align 1
  %45 = getelementptr inbounds %struct.permission_context, %struct.permission_context* %0, i64 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, 61440
  %48 = icmp eq i32 %47, 16384
  br i1 %48, label %49, label %62

; <label>:49:                                     ; preds = %44
  br i1 %10, label %60, label %50

; <label>:50:                                     ; preds = %49
  %51 = getelementptr inbounds %struct.permission_context, %struct.permission_context* %0, i64 0, i32 2
  %52 = load %struct.__acl_ext*, %struct.__acl_ext** %51, align 8
  %53 = icmp eq %struct.__acl_ext* %52, null
  br i1 %53, label %60, label %54

; <label>:54:                                     ; preds = %50
  %55 = tail call i32 @acl_default_nontrivial(%struct.__acl_ext* nonnull %52) #11
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

; <label>:57:                                     ; preds = %54
  %58 = load %struct.__acl_ext*, %struct.__acl_ext** %51, align 8
  %59 = tail call i32 @acl_set_file(i8* %1, i32 16384, %struct.__acl_ext* %58) #11
  br label %62

; <label>:60:                                     ; preds = %54, %50, %49
  %61 = tail call i32 @acl_delete_def_file(i8* %1) #11
  br label %62

; <label>:62:                                     ; preds = %18, %23, %5, %44, %60, %57, %34, %43, %39
  %63 = phi i32 [ 0, %5 ], [ %32, %34 ], [ 0, %43 ], [ %32, %39 ], [ %61, %60 ], [ %59, %57 ], [ 0, %44 ], [ 0, %23 ], [ -1, %18 ]
  ret i32 %63
}

declare %struct.__acl_ext* @acl_from_mode(i32) local_unnamed_addr #3

declare i32 @acl_set_fd(i32, %struct.__acl_ext*) local_unnamed_addr #3

declare i32 @acl_set_file(i8*, i32, %struct.__acl_ext*) local_unnamed_addr #3

declare i32 @acl_delete_def_file(i8*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #6 {
  tail call void @usage(i32 1) #11
  ret void
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @argmatch(i8* nocapture readonly, i8** nocapture readonly, i8* readonly, i64) local_unnamed_addr #12 {
  %5 = tail call i64 @strlen(i8* %0) #14
  %6 = load i8*, i8** %1, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %39, label %8

; <label>:8:                                      ; preds = %4
  %9 = icmp eq i8* %2, null
  br label %10

; <label>:10:                                     ; preds = %8, %31
  %11 = phi i8* [ %6, %8 ], [ %36, %31 ]
  %12 = phi i8 [ 0, %8 ], [ %33, %31 ]
  %13 = phi i64 [ -1, %8 ], [ %32, %31 ]
  %14 = phi i64 [ 0, %8 ], [ %34, %31 ]
  %15 = tail call i32 @strncmp(i8* nonnull %11, i8* %0, i64 %5) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %31

; <label>:17:                                     ; preds = %10
  %18 = tail call i64 @strlen(i8* nonnull %11) #14
  %19 = icmp eq i64 %18, %5
  br i1 %19, label %45, label %20

; <label>:20:                                     ; preds = %17
  %21 = icmp eq i64 %13, -1
  br i1 %21, label %31, label %22

; <label>:22:                                     ; preds = %20
  br i1 %9, label %30, label %23

; <label>:23:                                     ; preds = %22
  %24 = mul i64 %13, %3
  %25 = getelementptr inbounds i8, i8* %2, i64 %24
  %26 = mul i64 %14, %3
  %27 = getelementptr inbounds i8, i8* %2, i64 %26
  %28 = tail call i32 @memcmp(i8* %25, i8* %27, i64 %3) #14
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

; <label>:30:                                     ; preds = %23, %22
  br label %31

; <label>:31:                                     ; preds = %20, %23, %10, %30
  %32 = phi i64 [ %13, %10 ], [ %13, %30 ], [ %13, %23 ], [ %14, %20 ]
  %33 = phi i8 [ %12, %10 ], [ 1, %30 ], [ %12, %23 ], [ %12, %20 ]
  %34 = add i64 %14, 1
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %10

; <label>:38:                                     ; preds = %31
  br label %39

; <label>:39:                                     ; preds = %38, %4
  %40 = phi i64 [ -1, %4 ], [ %32, %38 ]
  %41 = phi i8 [ 0, %4 ], [ %33, %38 ]
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, i64 %40, i64 -2
  br label %46

; <label>:45:                                     ; preds = %17
  br label %46

; <label>:46:                                     ; preds = %45, %39
  %47 = phi i64 [ %44, %39 ], [ %14, %45 ]
  ret i64 %47
}

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_invalid(i8*, i8*, i64) local_unnamed_addr #6 {
  %4 = icmp eq i64 %2, -1
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.377, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.378, i64 0, i64 0)
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #11
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #11
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @argmatch_valid(i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #6 {
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.379, i64 0, i64 0), i32 5) #11
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5) #11
  %7 = load i8*, i8** %0, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %35, label %9

; <label>:9:                                      ; preds = %3
  br label %10

; <label>:10:                                     ; preds = %9, %28
  %11 = phi i8* [ %32, %28 ], [ %7, %9 ]
  %12 = phi i8* [ %29, %28 ], [ null, %9 ]
  %13 = phi i64 [ %30, %28 ], [ 0, %9 ]
  %14 = icmp eq i64 %13, 0
  %15 = mul i64 %13, %2
  %16 = getelementptr inbounds i8, i8* %1, i64 %15
  br i1 %14, label %20, label %17

; <label>:17:                                     ; preds = %10
  %18 = tail call i32 @memcmp(i8* %12, i8* %16, i64 %2) #14
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

; <label>:20:                                     ; preds = %10, %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = tail call i8* @quote(i8* nonnull %11) #11
  %23 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %21, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.380, i64 0, i64 0), i8* %22) #11
  br label %28

; <label>:24:                                     ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = tail call i8* @quote(i8* nonnull %11) #11
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %25, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.381, i64 0, i64 0), i8* %26) #11
  br label %28

; <label>:28:                                     ; preds = %20, %24
  %29 = phi i8* [ %16, %20 ], [ %12, %24 ]
  %30 = add i64 %13, 1
  %31 = getelementptr inbounds i8*, i8** %0, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %10

; <label>:34:                                     ; preds = %28
  br label %35

; <label>:35:                                     ; preds = %34, %3
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 5
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %36, i64 0, i32 6
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ult i8* %38, %40
  br i1 %41, label %44, label %42

; <label>:42:                                     ; preds = %35
  %43 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %36, i32 10) #11
  br label %46

; <label>:44:                                     ; preds = %35
  %45 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %45, i8** %37, align 8
  store i8 10, i8* %38, align 1
  br label %46

; <label>:46:                                     ; preds = %42, %44
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @__xargmatch_internal(i8*, i8*, i8** nocapture readonly, i8* readonly, i64, void ()* nocapture) local_unnamed_addr #6 {
  %7 = tail call i64 @argmatch(i8* %1, i8** %2, i8* %3, i64 %4) #14
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %15, label %9

; <label>:9:                                      ; preds = %6
  %10 = icmp eq i64 %7, -1
  %11 = select i1 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.377, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.378, i64 0, i64 0)
  %12 = tail call i8* @dcgettext(i8* null, i8* %11, i32 5) #11
  %13 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #11
  %14 = tail call i8* @quote_n(i32 1, i8* %0) #11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %12, i8* %13, i8* %14) #11
  tail call void @argmatch_valid(i8** %2, i8* %3, i64 %4)
  tail call void %5() #11
  br label %15

; <label>:15:                                     ; preds = %6, %9
  %16 = phi i64 [ -1, %9 ], [ %7, %6 ]
  ret i64 %16
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i8* @argmatch_to_argument(i8* nocapture readonly, i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #12 {
  %5 = load i8*, i8** %1, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %22, label %7

; <label>:7:                                      ; preds = %4
  br label %12

; <label>:8:                                      ; preds = %12
  %9 = getelementptr inbounds i8*, i8** %1, i64 %19
  %10 = load i8*, i8** %9, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %20, label %12

; <label>:12:                                     ; preds = %7, %8
  %13 = phi i8* [ %10, %8 ], [ %5, %7 ]
  %14 = phi i64 [ %19, %8 ], [ 0, %7 ]
  %15 = mul i64 %14, %3
  %16 = getelementptr inbounds i8, i8* %2, i64 %15
  %17 = tail call i32 @memcmp(i8* %0, i8* %16, i64 %3) #14
  %18 = icmp eq i32 %17, 0
  %19 = add i64 %14, 1
  br i1 %18, label %20, label %8

; <label>:20:                                     ; preds = %8, %12
  %21 = phi i8* [ null, %8 ], [ %13, %12 ]
  br label %22

; <label>:22:                                     ; preds = %20, %4
  %23 = phi i8* [ null, %4 ], [ %21, %20 ]
  ret i8* %23
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @set_cloexec_flag(i32, i1 zeroext) local_unnamed_addr #6 {
  %3 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 1, i32 0) #11
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %14

; <label>:5:                                      ; preds = %2
  %6 = or i32 %3, 1
  %7 = and i32 %3, -2
  %8 = select i1 %1, i32 %6, i32 %7
  %9 = icmp eq i32 %3, %8
  br i1 %9, label %14, label %10

; <label>:10:                                     ; preds = %5
  %11 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 2, i32 %8) #11
  %12 = icmp eq i32 %11, -1
  %13 = sext i1 %12 to i32
  ret i32 %13

; <label>:14:                                     ; preds = %2, %5
  %15 = phi i32 [ 0, %5 ], [ -1, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @dup_cloexec(i32) local_unnamed_addr #6 {
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 1030, i32 0) #11
  ret i32 %2
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #6 {
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11
  %8 = icmp ne i32 %7, 0
  br i1 %6, label %9, label %19

; <label>:9:                                      ; preds = %1
  %10 = xor i1 %8, true
  %11 = icmp ne i64 %2, 0
  %12 = or i1 %11, %10
  %13 = sext i1 %8 to i32
  br i1 %12, label %22, label %14

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 9
  %18 = sext i1 %17 to i32
  br label %22

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #1
  store i32 0, i32* %21, align 4
  br label %22

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @cycle_check_init(%struct.cycle_check_state* nocapture) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 1
  store i64 0, i64* %2, align 8
  %3 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 2
  store i32 9827862, i32* %3, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @cycle_check(%struct.cycle_check_state* nocapture, %struct.stat* nocapture readonly) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 2
  %4 = load i32, i32* %3, align 8
  %5 = icmp eq i32 %4, 9827862
  br i1 %5, label %7, label %6

; <label>:6:                                      ; preds = %2
  tail call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.392, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1.393, i64 0, i64 0), i32 60, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.cycle_check, i64 0, i64 0)) #15
  unreachable

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %23, label %11

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %36, label %23

; <label>:23:                                     ; preds = %7, %17, %11
  %24 = add i64 %9, 1
  store i64 %24, i64* %8, align 8
  %25 = and i64 %24, %9
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %36

; <label>:27:                                     ; preds = %23
  %28 = icmp eq i64 %24, 0
  br i1 %28, label %36, label %29

; <label>:29:                                     ; preds = %27
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  br label %36

; <label>:36:                                     ; preds = %23, %29, %27, %17
  %37 = phi i1 [ true, %17 ], [ true, %27 ], [ false, %29 ], [ false, %23 ]
  ret i1 %37
}

; Function Attrs: nounwind sspstrong uwtable
define void @gettime(%struct.timespec*) local_unnamed_addr #6 {
  %2 = alloca %struct.timespec, align 8
  %3 = tail call i32 @clock_gettime(i32 0, %struct.timespec* %0) #11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %5

; <label>:5:                                      ; preds = %1
  %6 = bitcast %struct.timespec* %2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %6) #11
  %7 = call i32 @gettimeofday(%struct.timespec* nonnull %2, %struct.timezone* null) #11
  %8 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 0
  store i64 %9, i64* %10, align 8
  %11 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i64 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = mul nsw i64 %12, 1000
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %0, i64 0, i32 1
  store i64 %13, i64* %14, align 8
  call void @llvm.lifetime.end(i64 16, i8* nonnull %6) #11
  br label %15

; <label>:15:                                     ; preds = %1, %5
  ret void
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32, %struct.timespec*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timespec* nocapture, %struct.timezone* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define zeroext i1 @hard_locale(i32) local_unnamed_addr #6 {
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11
  %3 = icmp eq i8* %2, null
  br i1 %3, label %15, label %4

; <label>:4:                                      ; preds = %1
  %5 = load i8, i8* %2, align 1
  %6 = icmp eq i8 %5, 67
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %2, i64 1
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.398, i64 0, i64 0)) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %7
  br label %15

; <label>:15:                                     ; preds = %1, %11, %14
  %16 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %1 ]
  ret i1 %16
}

; Function Attrs: nounwind readonly sspstrong uwtable
define i64 @hash_pjw(i8* nocapture readonly, i64) local_unnamed_addr #12 {
  %3 = load i8, i8* %0, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %19, label %5

; <label>:5:                                      ; preds = %2
  br label %6

; <label>:6:                                      ; preds = %5, %6
  %7 = phi i8 [ %16, %6 ], [ %3, %5 ]
  %8 = phi i64 [ %14, %6 ], [ 0, %5 ]
  %9 = phi i8* [ %15, %6 ], [ %0, %5 ]
  %10 = sext i8 %7 to i64
  %11 = shl i64 %8, 9
  %12 = lshr i64 %8, 55
  %13 = or i64 %11, %12
  %14 = add i64 %10, %13
  %15 = getelementptr inbounds i8, i8* %9, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %6

; <label>:18:                                     ; preds = %6
  br label %19

; <label>:19:                                     ; preds = %18, %2
  %20 = phi i64 [ 0, %2 ], [ %14, %18 ]
  %21 = urem i64 %20, %1
  ret i64 %21
}

; Function Attrs: nounwind sspstrong uwtable
define void @i_ring_init(%struct.I_ring* nocapture, i32) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 4
  store i8 1, i8* %3, align 4
  %4 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 2
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 3
  store i32 0, i32* %5, align 4
  %6 = insertelement <4 x i32> undef, i32 %1, i32 0
  %7 = shufflevector <4 x i32> %6, <4 x i32> undef, <4 x i32> zeroinitializer
  %8 = bitcast %struct.I_ring* %0 to <4 x i32>*
  store <4 x i32> %7, <4 x i32>* %8, align 4
  %9 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 1
  store i32 %1, i32* %9, align 4
  ret void
}

; Function Attrs: nounwind readonly sspstrong uwtable
define zeroext i1 @i_ring_empty(%struct.I_ring* nocapture readonly) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 4
  %3 = load i8, i8* %2, align 4
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @i_ring_push(%struct.I_ring* nocapture, i32) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 2
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 4
  %6 = load i8, i8* %5, align 4
  %7 = xor i8 %6, 1
  %8 = zext i8 %7 to i32
  %9 = add i32 %8, %4
  %10 = and i32 %9, 3
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 0, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %1, i32* %12, align 4
  store i32 %10, i32* %3, align 4
  %14 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %10, %15
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %2
  %18 = load i8, i8* %5, align 4
  %19 = xor i8 %18, 1
  %20 = zext i8 %19 to i32
  %21 = add i32 %20, %9
  %22 = and i32 %21, 3
  store i32 %22, i32* %14, align 4
  br label %23

; <label>:23:                                     ; preds = %17, %2
  store i8 0, i8* %5, align 4
  ret i32 %13
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @i_ring_pop(%struct.I_ring* nocapture) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 4
  %3 = load i8, i8* %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

; <label>:5:                                      ; preds = %1
  tail call void @abort() #15
  unreachable

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %6
  store i8 1, i8* %2, align 4
  br label %22

; <label>:19:                                     ; preds = %6
  %20 = add i32 %14, 3
  %21 = and i32 %20, 3
  store i32 %21, i32* %7, align 4
  br label %22

; <label>:22:                                     ; preds = %19, %18
  ret i32 %11
}

; Function Attrs: nounwind sspstrong uwtable
define i8* @locale_charset() local_unnamed_addr #6 {
  %1 = alloca [51 x i8], align 16
  %2 = alloca [51 x i8], align 16
  %3 = tail call i8* @nl_langinfo(i32 14) #11
  %4 = icmp eq i8* %3, null
  %5 = select i1 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.411, i64 0, i64 0), i8* %3
  %6 = load volatile i8*, i8** @charset_aliases, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %127

; <label>:8:                                      ; preds = %0
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.412, i64 0, i64 0)) #11
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %8
  %12 = load i8, i8* %9, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %8
  br label %15

; <label>:15:                                     ; preds = %14, %11
  %16 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4.413, i64 0, i64 0), %14 ], [ %9, %11 ]
  %17 = tail call i64 @strlen(i8* nonnull %16) #14
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %24, label %19

; <label>:19:                                     ; preds = %15
  %20 = add i64 %17, -1
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 47
  br label %24

; <label>:24:                                     ; preds = %19, %15
  %25 = phi i1 [ false, %15 ], [ %23, %19 ]
  %26 = zext i1 %25 to i64
  %27 = add i64 %17, 14
  %28 = add i64 %27, %26
  %29 = tail call noalias i8* @malloc(i64 %28) #11
  %30 = icmp eq i8* %29, null
  br i1 %30, label %125, label %31

; <label>:31:                                     ; preds = %24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull %29, i8* %16, i64 %17, i32 1, i1 false) #11
  %32 = getelementptr inbounds i8, i8* %29, i64 %17
  br i1 %25, label %33, label %35

; <label>:33:                                     ; preds = %31
  store i8 47, i8* %32, align 1
  %34 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.414, i64 0, i64 0), i64 14, i32 1, i1 false) #11
  br label %37

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %32, i64 %26
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.414, i64 0, i64 0), i64 14, i32 1, i1 false) #11
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = tail call i32 (i8*, i32, ...) @open(i8* nonnull %29, i32 131072) #11
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %123, label %40

; <label>:40:                                     ; preds = %37
  %41 = tail call %struct._IO_FILE* @fdopen(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.415, i64 0, i64 0)) #11
  %42 = icmp eq %struct._IO_FILE* %41, null
  br i1 %42, label %48, label %43

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [51 x i8], [51 x i8]* %1, i64 0, i64 0
  %45 = getelementptr inbounds [51 x i8], [51 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 1
  %47 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 2
  br label %50

; <label>:48:                                     ; preds = %40
  %49 = tail call i32 @close(i32 %38) #11
  br label %123

; <label>:50:                                     ; preds = %111, %43
  %51 = phi i64 [ %112, %111 ], [ 0, %43 ]
  %52 = phi i8* [ %113, %111 ], [ null, %43 ]
  call void @llvm.lifetime.start(i64 51, i8* nonnull %44) #11
  call void @llvm.lifetime.start(i64 51, i8* nonnull %45) #11
  %53 = load i8*, i8** %46, align 8
  %54 = load i8*, i8** %47, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %58, label %56

; <label>:56:                                     ; preds = %50
  %57 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11
  br label %62

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %59, i8** %46, align 8
  %60 = load i8, i8* %53, align 1
  %61 = zext i8 %60 to i32
  br label %62

; <label>:62:                                     ; preds = %58, %56
  %63 = phi i32 [ %57, %56 ], [ %61, %58 ]
  switch i32 %63, label %77 [
    i32 -1, label %115
    i32 32, label %111
    i32 10, label %111
    i32 9, label %111
    i32 35, label %64
  ]

; <label>:64:                                     ; preds = %62
  br label %65

; <label>:65:                                     ; preds = %64, %75
  %66 = load i8*, i8** %46, align 8
  %67 = load i8*, i8** %47, align 8
  %68 = icmp ult i8* %66, %67
  br i1 %68, label %71, label %69

; <label>:69:                                     ; preds = %65
  %70 = call i32 @__uflow(%struct._IO_FILE* nonnull %41) #11
  br label %75

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds i8, i8* %66, i64 1
  store i8* %72, i8** %46, align 8
  %73 = load i8, i8* %66, align 1
  %74 = zext i8 %73 to i32
  br label %75

; <label>:75:                                     ; preds = %71, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %71 ]
  switch i32 %76, label %65 [
    i32 -1, label %114
    i32 10, label %110
  ]

; <label>:77:                                     ; preds = %62
  %78 = call i32 @ungetc(i32 %63, %struct._IO_FILE* nonnull %41) #11
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6.416, i64 0, i64 0), i8* nonnull %44, i8* nonnull %45) #11
  %80 = icmp slt i32 %79, 2
  br i1 %80, label %115, label %81

; <label>:81:                                     ; preds = %77
  %82 = call i64 @strlen(i8* nonnull %44) #14
  %83 = call i64 @strlen(i8* nonnull %45) #14
  %84 = icmp eq i64 %51, 0
  %85 = add i64 %82, 1
  %86 = add i64 %85, %83
  %87 = add i64 %86, 1
  br i1 %84, label %88, label %91

; <label>:88:                                     ; preds = %81
  %89 = add i64 %86, 2
  %90 = call noalias i8* @malloc(i64 %89) #11
  br label %95

; <label>:91:                                     ; preds = %81
  %92 = add i64 %87, %51
  %93 = add i64 %92, 1
  %94 = call i8* @realloc(i8* %52, i64 %93) #11
  br label %95

; <label>:95:                                     ; preds = %91, %88
  %96 = phi i64 [ %87, %88 ], [ %92, %91 ]
  %97 = phi i8* [ %90, %88 ], [ %94, %91 ]
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %95
  call void @free(i8* %52) #11
  br label %116

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds i8, i8* %97, i64 %96
  %102 = xor i64 %83, -1
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = xor i64 %82, -1
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %105, i1 false) #11
  %107 = call i8* @__strcpy_chk(i8* nonnull %105, i8* nonnull %44, i64 %106) #11
  %108 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %103, i1 false) #11
  %109 = call i8* @__strcpy_chk(i8* nonnull %103, i8* nonnull %45, i64 %108) #11
  br label %111

; <label>:110:                                    ; preds = %75
  br label %111

; <label>:111:                                    ; preds = %110, %100, %62, %62, %62
  %112 = phi i64 [ %96, %100 ], [ %51, %62 ], [ %51, %62 ], [ %51, %62 ], [ %51, %110 ]
  %113 = phi i8* [ %97, %100 ], [ %52, %62 ], [ %52, %62 ], [ %52, %62 ], [ %52, %110 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11
  br label %50

; <label>:114:                                    ; preds = %75
  br label %116

; <label>:115:                                    ; preds = %62, %77
  br label %116

; <label>:116:                                    ; preds = %115, %114, %99
  %117 = phi i64 [ 0, %99 ], [ %51, %114 ], [ %51, %115 ]
  %118 = phi i8* [ null, %99 ], [ %52, %114 ], [ %52, %115 ]
  call void @llvm.lifetime.end(i64 51, i8* nonnull %45) #11
  call void @llvm.lifetime.end(i64 51, i8* nonnull %44) #11
  %119 = call i32 @rpl_fclose(%struct._IO_FILE* nonnull %41) #11
  %120 = icmp eq i64 %117, 0
  br i1 %120, label %123, label %121

; <label>:121:                                    ; preds = %116
  %122 = getelementptr inbounds i8, i8* %118, i64 %117
  store i8 0, i8* %122, align 1
  br label %123

; <label>:123:                                    ; preds = %121, %116, %48, %37
  %124 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.411, i64 0, i64 0), %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.411, i64 0, i64 0), %48 ], [ %118, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.411, i64 0, i64 0), %116 ]
  call void @free(i8* %29) #11
  br label %125

; <label>:125:                                    ; preds = %123, %24
  %126 = phi i8* [ %124, %123 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.411, i64 0, i64 0), %24 ]
  store volatile i8* %126, i8** @charset_aliases, align 8
  br label %127

; <label>:127:                                    ; preds = %0, %125
  %128 = phi i8* [ %6, %0 ], [ %126, %125 ]
  %129 = load i8, i8* %128, align 1
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %157, label %131

; <label>:131:                                    ; preds = %127
  br label %132

; <label>:132:                                    ; preds = %131, %147
  %133 = phi i8 [ %154, %147 ], [ %129, %131 ]
  %134 = phi i8* [ %153, %147 ], [ %128, %131 ]
  %135 = call i32 @strcmp(i8* %5, i8* %134) #11
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %143, label %137

; <label>:137:                                    ; preds = %132
  %138 = icmp eq i8 %133, 42
  br i1 %138, label %139, label %147

; <label>:139:                                    ; preds = %137
  %140 = getelementptr inbounds i8, i8* %134, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %147

; <label>:143:                                    ; preds = %139, %132
  %144 = call i64 @strlen(i8* %134) #14
  %145 = getelementptr inbounds i8, i8* %134, i64 %144
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  br label %157

; <label>:147:                                    ; preds = %137, %139
  %148 = call i64 @strlen(i8* %134) #14
  %149 = add i64 %148, 1
  %150 = getelementptr inbounds i8, i8* %134, i64 %149
  %151 = call i64 @strlen(i8* %150) #14
  %152 = add i64 %151, 1
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %132

; <label>:156:                                    ; preds = %147
  br label %157

; <label>:157:                                    ; preds = %156, %127, %143
  %158 = phi i8* [ %146, %143 ], [ %5, %127 ], [ %5, %156 ]
  %159 = load i8, i8* %158, align 1
  %160 = icmp eq i8 %159, 0
  %161 = select i1 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.417, i64 0, i64 0), i8* %158
  ret i8* %161
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fscanf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @__strcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define i32 @openat_safer(i32, i8*, i32, ...) local_unnamed_addr #6 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = and i32 %2, 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

; <label>:7:                                      ; preds = %3
  %8 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.lifetime.start(i64 24, i8* nonnull %8) #11
  call void @llvm.va_start(i8* nonnull %8)
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 0
  %10 = load i32, i32* %9, align 16
  %11 = icmp ult i32 %10, 41
  br i1 %11, label %12, label %18

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 3
  %14 = load i8*, i8** %13, align 16
  %15 = sext i32 %10 to i64
  %16 = getelementptr i8, i8* %14, i64 %15
  %17 = add i32 %10, 8
  store i32 %17, i32* %9, align 16
  br label %22

; <label>:18:                                     ; preds = %7
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr i8, i8* %20, i64 8
  store i8* %21, i8** %19, align 8
  br label %22

; <label>:22:                                     ; preds = %18, %12
  %23 = phi i8* [ %16, %12 ], [ %20, %18 ]
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %24, align 4
  call void @llvm.va_end(i8* nonnull %8)
  call void @llvm.lifetime.end(i64 24, i8* nonnull %8) #11
  br label %26

; <label>:26:                                     ; preds = %3, %22
  %27 = phi i32 [ %25, %22 ], [ 0, %3 ]
  %28 = call i32 (i32, i8*, i32, ...) @openat(i32 %0, i8* %1, i32 %2, i32 %27) #11
  %29 = call i32 @fd_safer(i32 %28) #11
  ret i32 %29
}

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.randint_source* @randint_new(%struct.randread_source*) local_unnamed_addr #6 {
  %2 = tail call noalias i8* @xmalloc(i64 24) #11
  %3 = bitcast i8* %2 to %struct.randint_source*
  %4 = bitcast i8* %2 to %struct.randread_source**
  store %struct.randread_source* %0, %struct.randread_source** %4, align 8
  %5 = getelementptr inbounds i8, i8* %2, i64 8
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 16, i32 8, i1 false)
  ret %struct.randint_source* %3
}

; Function Attrs: nounwind sspstrong uwtable
define noalias %struct.randint_source* @randint_all_new(i8*, i64) local_unnamed_addr #6 {
  %3 = tail call %struct.randread_source* @randread_new(i8* %0, i64 %1) #11
  %4 = icmp eq %struct.randread_source* %3, null
  br i1 %4, label %10, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call noalias i8* @xmalloc(i64 24) #11
  %7 = bitcast i8* %6 to %struct.randint_source*
  %8 = bitcast i8* %6 to %struct.randread_source**
  store %struct.randread_source* %3, %struct.randread_source** %8, align 8
  %9 = getelementptr inbounds i8, i8* %6, i64 8
  tail call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 16, i32 8, i1 false) #11
  br label %10

; <label>:10:                                     ; preds = %2, %5
  %11 = phi %struct.randint_source* [ %7, %5 ], [ null, %2 ]
  ret %struct.randint_source* %11
}

; Function Attrs: nounwind readonly sspstrong uwtable
define %struct.randread_source* @randint_get_source(%struct.randint_source* nocapture readonly) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 0
  %3 = load %struct.randread_source*, %struct.randread_source** %2, align 8
  ret %struct.randread_source* %3
}

; Function Attrs: nounwind sspstrong uwtable
define i64 @randint_genmax(%struct.randint_source* nocapture, i64) local_unnamed_addr #6 {
  %3 = alloca [8 x i8], align 1
  %4 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 0
  %5 = load %struct.randread_source*, %struct.randread_source** %4, align 8
  %6 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %1, 1
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  br label %12

; <label>:12:                                     ; preds = %45, %2
  %13 = phi i64 [ %9, %2 ], [ %51, %45 ]
  %14 = phi i64 [ %7, %2 ], [ %49, %45 ]
  %15 = icmp ult i64 %13, %1
  br i1 %15, label %16, label %39

; <label>:16:                                     ; preds = %12
  call void @llvm.lifetime.start(i64 8, i8* nonnull %11) #11
  br label %17

; <label>:17:                                     ; preds = %17, %16
  %18 = phi i64 [ %13, %16 ], [ %21, %17 ]
  %19 = phi i64 [ 0, %16 ], [ %22, %17 ]
  %20 = shl i64 %18, 8
  %21 = or i64 %20, 255
  %22 = add i64 %19, 1
  %23 = icmp ult i64 %21, %1
  br i1 %23, label %17, label %24

; <label>:24:                                     ; preds = %17
  call void @randread(%struct.randread_source* %5, i8* nonnull %11, i64 %22) #11
  br label %25

; <label>:25:                                     ; preds = %25, %24
  %26 = phi i64 [ 0, %24 ], [ %36, %25 ]
  %27 = phi i64 [ %13, %24 ], [ %35, %25 ]
  %28 = phi i64 [ %14, %24 ], [ %33, %25 ]
  %29 = shl i64 %28, 8
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 %26
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i64
  %33 = or i64 %32, %29
  %34 = shl i64 %27, 8
  %35 = or i64 %34, 255
  %36 = add i64 %26, 1
  %37 = icmp ult i64 %35, %1
  br i1 %37, label %25, label %38

; <label>:38:                                     ; preds = %25
  call void @llvm.lifetime.end(i64 8, i8* nonnull %11) #11
  br label %39

; <label>:39:                                     ; preds = %38, %12
  %40 = phi i64 [ %35, %38 ], [ %13, %12 ]
  %41 = phi i64 [ %33, %38 ], [ %14, %12 ]
  %42 = icmp eq i64 %40, %1
  br i1 %42, label %43, label %45

; <label>:43:                                     ; preds = %39
  %44 = bitcast i64* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* %44, i8 0, i64 16, i32 8, i1 false)
  br label %55

; <label>:45:                                     ; preds = %39
  %46 = sub i64 %40, %1
  %47 = urem i64 %46, %10
  %48 = sub i64 %40, %47
  %49 = urem i64 %41, %10
  %50 = icmp ugt i64 %41, %48
  %51 = add i64 %47, -1
  br i1 %50, label %12, label %52

; <label>:52:                                     ; preds = %45
  %53 = udiv i64 %41, %10
  store i64 %53, i64* %6, align 8
  %54 = udiv i64 %46, %10
  store i64 %54, i64* %8, align 8
  br label %55

; <label>:55:                                     ; preds = %52, %43
  %56 = phi i64 [ %41, %43 ], [ %49, %52 ]
  ret i64 %56
}

; Function Attrs: nounwind sspstrong uwtable
define void @randint_free(%struct.randint_source* nocapture) local_unnamed_addr #6 {
  %2 = bitcast %struct.randint_source* %0 to i8*
  tail call void @free(i8* %2) #11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @randint_all_free(%struct.randint_source* nocapture) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i64 0, i32 0
  %3 = load %struct.randread_source*, %struct.randread_source** %2, align 8
  %4 = tail call i32 @randread_free(%struct.randread_source* %3) #11
  %5 = tail call i32* @__errno_location() #1
  %6 = load i32, i32* %5, align 4
  %7 = bitcast %struct.randint_source* %0 to i8*
  tail call void @free(i8* %7) #11
  store i32 %6, i32* %5, align 4
  ret i32 %4
}

; Function Attrs: nounwind sspstrong uwtable
define %struct.randread_source* @randread_new(i8*, i64) local_unnamed_addr #6 {
  %3 = alloca %struct.timespec, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %9, label %17

; <label>:9:                                      ; preds = %2
  %10 = tail call noalias i8* @xmalloc(i64 4152) #11
  %11 = bitcast i8* %10 to %struct.randread_source*
  %12 = bitcast i8* %10 to %struct._IO_FILE**
  store %struct._IO_FILE* null, %struct._IO_FILE** %12, align 8
  %13 = getelementptr inbounds i8, i8* %10, i64 8
  %14 = bitcast i8* %13 to void (i8*)**
  store void (i8*)* @randread_error, void (i8*)** %14, align 8
  %15 = getelementptr inbounds i8, i8* %10, i64 16
  %16 = bitcast i8* %15 to i8**
  store i8* null, i8** %16, align 8
  br label %96

; <label>:17:                                     ; preds = %2
  %18 = icmp eq i8* %0, null
  br i1 %18, label %22, label %19

; <label>:19:                                     ; preds = %17
  %20 = tail call %struct._IO_FILE* @fopen_safer(i8* nonnull %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.428, i64 0, i64 0)) #11
  %21 = icmp eq %struct._IO_FILE* %20, null
  br i1 %21, label %96, label %22

; <label>:22:                                     ; preds = %19, %17
  %23 = phi %struct._IO_FILE* [ %20, %19 ], [ null, %17 ]
  %24 = tail call noalias i8* @xmalloc(i64 4152) #11
  %25 = bitcast i8* %24 to %struct.randread_source*
  %26 = bitcast i8* %24 to %struct._IO_FILE**
  store %struct._IO_FILE* %23, %struct._IO_FILE** %26, align 8
  %27 = getelementptr inbounds i8, i8* %24, i64 8
  %28 = bitcast i8* %27 to void (i8*)**
  store void (i8*)* @randread_error, void (i8*)** %28, align 8
  %29 = getelementptr inbounds i8, i8* %24, i64 16
  %30 = bitcast i8* %29 to i8**
  store i8* %0, i8** %30, align 8
  %31 = icmp eq %struct._IO_FILE* %23, null
  %32 = getelementptr inbounds i8, i8* %24, i64 24
  br i1 %31, label %37, label %33

; <label>:33:                                     ; preds = %22
  %34 = icmp ult i64 %1, 4096
  %35 = select i1 %34, i64 %1, i64 4096
  %36 = tail call i32 @setvbuf(%struct._IO_FILE* nonnull %23, i8* %32, i32 0, i64 %35) #11
  br label %96

; <label>:37:                                     ; preds = %22
  %38 = bitcast i8* %32 to i64*
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds i8, i8* %24, i64 32
  %40 = bitcast i8* %39 to %struct.isaac_state*
  %41 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.429, i64 0, i64 0), i32 0) #11
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %51

; <label>:43:                                     ; preds = %37
  %44 = icmp ult i64 %1, 2048
  %45 = select i1 %44, i64 %1, i64 2048
  %46 = tail call i64 @read(i32 %41, i8* %39, i64 %45) #11
  %47 = icmp sgt i64 %46, 0
  %48 = tail call i32 @close(i32 %41) #11
  br i1 %47, label %49, label %51

; <label>:49:                                     ; preds = %43
  %50 = icmp ult i64 %46, 2048
  br i1 %50, label %51, label %95

; <label>:51:                                     ; preds = %49, %43, %37
  %52 = phi i64 [ %46, %49 ], [ 0, %43 ], [ 0, %37 ]
  %53 = bitcast %struct.timespec* %3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* nonnull %53) #11
  %54 = sub nsw i64 2048, %52
  %55 = icmp ult i64 %54, 16
  %56 = select i1 %55, i64 %54, i64 16
  %57 = call i32 @gettimeofday(%struct.timespec* nonnull %3, %struct.timezone* null) #11
  %58 = getelementptr inbounds i8, i8* %39, i64 %52
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* nonnull %53, i64 %56, i32 1, i1 false) #11
  %59 = add i64 %56, %52
  call void @llvm.lifetime.end(i64 16, i8* nonnull %53) #11
  %60 = icmp ult i64 %59, 2048
  br i1 %60, label %61, label %95

; <label>:61:                                     ; preds = %51
  %62 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %62)
  %63 = sub i64 2048, %59
  %64 = icmp ult i64 %63, 4
  %65 = select i1 %64, i64 %63, i64 4
  %66 = tail call i32 @getpid() #11
  store i32 %66, i32* %4, align 4
  %67 = getelementptr inbounds i8, i8* %39, i64 %59
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* nonnull %62, i64 %65, i32 1, i1 false) #11
  %68 = add i64 %65, %59
  call void @llvm.lifetime.end(i64 4, i8* nonnull %62)
  %69 = icmp ult i64 %68, 2048
  br i1 %69, label %70, label %95

; <label>:70:                                     ; preds = %61
  %71 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %71)
  %72 = sub i64 2048, %68
  %73 = icmp ult i64 %72, 4
  %74 = select i1 %73, i64 %72, i64 4
  %75 = tail call i32 @getppid() #11
  store i32 %75, i32* %5, align 4
  %76 = getelementptr inbounds i8, i8* %39, i64 %68
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %76, i8* nonnull %71, i64 %74, i32 1, i1 false) #11
  %77 = add i64 %74, %68
  call void @llvm.lifetime.end(i64 4, i8* nonnull %71)
  %78 = icmp ult i64 %77, 2048
  br i1 %78, label %79, label %95

; <label>:79:                                     ; preds = %70
  %80 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %80)
  %81 = sub i64 2048, %77
  %82 = icmp ult i64 %81, 4
  %83 = select i1 %82, i64 %81, i64 4
  %84 = tail call i32 @getuid() #11
  store i32 %84, i32* %6, align 4
  %85 = getelementptr inbounds i8, i8* %39, i64 %77
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* nonnull %80, i64 %83, i32 1, i1 false) #11
  %86 = add i64 %83, %77
  call void @llvm.lifetime.end(i64 4, i8* nonnull %80)
  %87 = icmp ult i64 %86, 2048
  br i1 %87, label %88, label %95

; <label>:88:                                     ; preds = %79
  %89 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* nonnull %89)
  %90 = sub i64 2048, %86
  %91 = icmp ult i64 %90, 4
  %92 = select i1 %91, i64 %90, i64 4
  %93 = tail call i32 @getgid() #11
  store i32 %93, i32* %7, align 4
  %94 = getelementptr inbounds i8, i8* %39, i64 %86
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %94, i8* nonnull %89, i64 %92, i32 1, i1 false) #11
  call void @llvm.lifetime.end(i64 4, i8* nonnull %89)
  br label %95

; <label>:95:                                     ; preds = %49, %51, %61, %70, %79, %88
  tail call void @isaac_seed(%struct.isaac_state* %40) #11
  br label %96

; <label>:96:                                     ; preds = %19, %95, %33, %9
  %97 = phi %struct.randread_source* [ %11, %9 ], [ null, %19 ], [ %25, %95 ], [ %25, %33 ]
  ret %struct.randread_source* %97
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @randread_error(i8*) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %11, label %3

; <label>:3:                                      ; preds = %1
  %4 = load volatile i32, i32* @exit_failure, align 4
  %5 = tail call i32* @__errno_location() #1
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.430, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2.431, i64 0, i64 0)
  %9 = tail call i8* @dcgettext(i8* null, i8* %8, i32 5) #11
  %10 = tail call i8* @quote(i8* nonnull %0) #11
  tail call void (i32, i32, i8*, ...) @error(i32 %4, i32 %6, i8* %9, i8* %10) #11
  br label %11

; <label>:11:                                     ; preds = %1, %3
  tail call void @abort() #15
  unreachable
}

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getppid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getgid() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define void @randread_set_handler(%struct.randread_source* nocapture, void (i8*)*) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 1
  store void (i8*)* %1, void (i8*)** %3, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @randread_set_handler_arg(%struct.randread_source* nocapture, i8*) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 2
  store i8* %1, i8** %3, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @randread(%struct.randread_source*, i8*, i64) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %6 = icmp eq %struct._IO_FILE* %5, null
  br i1 %6, label %33, label %7

; <label>:7:                                      ; preds = %3
  %8 = tail call i64 @fread_unlocked(i8* %1, i64 1, i64 %2, %struct._IO_FILE* nonnull %5) #11
  %9 = tail call i32* @__errno_location() #1
  %10 = sub i64 %2, %8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %69, label %12

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 2
  br label %15

; <label>:15:                                     ; preds = %15, %12
  %16 = phi i64 [ %10, %12 ], [ %31, %15 ]
  %17 = phi i64 [ %8, %12 ], [ %30, %15 ]
  %18 = phi i8* [ %1, %12 ], [ %19, %15 ]
  %19 = getelementptr inbounds i8, i8* %18, i64 %17
  %20 = load i32, i32* %9, align 4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %22 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %21, i64 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 32
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %25, i32 %20, i32 0
  store i32 %26, i32* %9, align 4
  %27 = load void (i8*)*, void (i8*)** %13, align 8
  %28 = load i8*, i8** %14, align 8
  tail call void %27(i8* %28) #11
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %30 = tail call i64 @fread_unlocked(i8* %19, i64 1, i64 %16, %struct._IO_FILE* %29) #11
  %31 = sub i64 %16, %30
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %68, label %15

; <label>:33:                                     ; preds = %3
  %34 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 3, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %35, %2
  %37 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 3, i32 0, i32 2
  %38 = getelementptr inbounds %union.anon.0, %union.anon.0* %37, i64 1
  %39 = bitcast %union.anon.0* %38 to i8*
  %40 = sub i64 0, %35
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  br i1 %36, label %42, label %49

; <label>:42:                                     ; preds = %33
  %43 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 3, i32 0, i32 1
  %44 = getelementptr inbounds %union.anon.0, %union.anon.0* %37, i64 0, i32 0, i64 0
  %45 = bitcast %union.anon.0* %37 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %41, i64 %35, i32 1, i1 false) #11
  %46 = getelementptr inbounds i8, i8* %1, i64 %35
  %47 = sub i64 %2, %35
  %48 = bitcast i8* %46 to i64*
  br label %55

; <label>:49:                                     ; preds = %63, %33
  %50 = phi i64 [ %2, %33 ], [ %56, %63 ]
  %51 = phi i64 [ %35, %33 ], [ 2048, %63 ]
  %52 = phi i8* [ %1, %33 ], [ %64, %63 ]
  %53 = phi i8* [ %41, %33 ], [ %45, %63 ]
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 %50, i32 1, i1 false) #11
  %54 = sub i64 %51, %50
  br label %66

; <label>:55:                                     ; preds = %59, %42
  %56 = phi i64 [ %47, %42 ], [ %61, %59 ]
  %57 = phi i64* [ %48, %42 ], [ %60, %59 ]
  %58 = icmp ugt i64 %56, 2047
  br i1 %58, label %59, label %63

; <label>:59:                                     ; preds = %55
  tail call void @isaac_refill(%struct.isaac_state* %43, i64* %57) #11
  %60 = getelementptr inbounds i64, i64* %57, i64 256
  %61 = add i64 %56, -2048
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %65, label %55

; <label>:63:                                     ; preds = %55
  %64 = bitcast i64* %57 to i8*
  tail call void @isaac_refill(%struct.isaac_state* %43, i64* %44) #11
  br label %49

; <label>:65:                                     ; preds = %59
  br label %66

; <label>:66:                                     ; preds = %65, %49
  %67 = phi i64 [ %54, %49 ], [ 0, %65 ]
  store i64 %67, i64* %34, align 8
  br label %69

; <label>:68:                                     ; preds = %15
  br label %69

; <label>:69:                                     ; preds = %68, %7, %66
  ret void
}

declare i64 @fread_unlocked(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define i32 @randread_free(%struct.randread_source* nocapture) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i64 0, i32 0
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %4 = bitcast %struct.randread_source* %0 to i8*
  tail call void @free(i8* %4) #11
  %5 = icmp eq %struct._IO_FILE* %3, null
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #11
  br label %8

; <label>:8:                                      ; preds = %1, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind sspstrong uwtable
define void @isaac_refill(%struct.isaac_state*, i64* nocapture) local_unnamed_addr #6 {
  %3 = ptrtoint %struct.isaac_state* %0 to i64
  %4 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, 1
  store i64 %10, i64* %8, align 8
  %11 = add i64 %10, %7
  %12 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 0
  %13 = bitcast %struct.isaac_state* %0 to i8*
  %14 = getelementptr %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 128
  %15 = ptrtoint i64* %14 to i64
  %16 = getelementptr %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 4
  %17 = ptrtoint i64* %16 to i64
  %18 = icmp ugt i64 %15, %17
  %19 = select i1 %18, i64 %15, i64 %17
  %20 = inttoptr i64 %19 to i8*
  %21 = xor i64 %3, -1
  %22 = getelementptr i8, i8* %20, i64 %21
  %23 = ptrtoint i8* %22 to i64
  %24 = lshr i64 %23, 5
  %25 = shl nuw nsw i64 %24, 2
  %26 = add nuw nsw i64 %25, 4
  %27 = getelementptr i64, i64* %1, i64 %26
  br label %28

; <label>:28:                                     ; preds = %28, %2
  %29 = phi i64* [ %1, %2 ], [ %112, %28 ]
  %30 = phi i64* [ %12, %2 ], [ %113, %28 ]
  %31 = phi i64 [ %11, %2 ], [ %110, %28 ]
  %32 = phi i64 [ %5, %2 ], [ %96, %28 ]
  %33 = shl i64 %32, 21
  %34 = xor i64 %32, -1
  %35 = xor i64 %33, %34
  %36 = getelementptr inbounds i64, i64* %30, i64 128
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %35, %37
  %39 = load i64, i64* %30, align 8
  %40 = and i64 %39, 2040
  %41 = getelementptr inbounds i8, i8* %13, i64 %40
  %42 = bitcast i8* %41 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, %31
  %45 = add i64 %44, %38
  store i64 %45, i64* %30, align 8
  %46 = lshr i64 %45, 8
  %47 = and i64 %46, 2040
  %48 = getelementptr inbounds i8, i8* %13, i64 %47
  %49 = bitcast i8* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, %39
  store i64 %51, i64* %29, align 8
  %52 = lshr i64 %38, 5
  %53 = xor i64 %52, %38
  %54 = getelementptr inbounds i64, i64* %30, i64 129
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, %53
  %57 = getelementptr inbounds i64, i64* %30, i64 1
  %58 = load i64, i64* %57, align 8
  %59 = and i64 %58, 2040
  %60 = getelementptr inbounds i8, i8* %13, i64 %59
  %61 = bitcast i8* %60 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %56, %51
  %64 = add i64 %63, %62
  store i64 %64, i64* %57, align 8
  %65 = lshr i64 %64, 8
  %66 = and i64 %65, 2040
  %67 = getelementptr inbounds i8, i8* %13, i64 %66
  %68 = bitcast i8* %67 to i64*
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, %58
  %71 = getelementptr inbounds i64, i64* %29, i64 1
  store i64 %70, i64* %71, align 8
  %72 = shl i64 %56, 12
  %73 = xor i64 %72, %56
  %74 = getelementptr inbounds i64, i64* %30, i64 130
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, %73
  %77 = getelementptr inbounds i64, i64* %30, i64 2
  %78 = load i64, i64* %77, align 8
  %79 = and i64 %78, 2040
  %80 = getelementptr inbounds i8, i8* %13, i64 %79
  %81 = bitcast i8* %80 to i64*
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %76, %70
  %84 = add i64 %83, %82
  store i64 %84, i64* %77, align 8
  %85 = lshr i64 %84, 8
  %86 = and i64 %85, 2040
  %87 = getelementptr inbounds i8, i8* %13, i64 %86
  %88 = bitcast i8* %87 to i64*
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, %78
  %91 = getelementptr inbounds i64, i64* %29, i64 2
  store i64 %90, i64* %91, align 8
  %92 = lshr i64 %76, 33
  %93 = xor i64 %92, %76
  %94 = getelementptr inbounds i64, i64* %30, i64 131
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, %93
  %97 = getelementptr inbounds i64, i64* %30, i64 3
  %98 = load i64, i64* %97, align 8
  %99 = and i64 %98, 2040
  %100 = getelementptr inbounds i8, i8* %13, i64 %99
  %101 = bitcast i8* %100 to i64*
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %96, %90
  %104 = add i64 %103, %102
  store i64 %104, i64* %97, align 8
  %105 = lshr i64 %104, 8
  %106 = and i64 %105, 2040
  %107 = getelementptr inbounds i8, i8* %13, i64 %106
  %108 = bitcast i8* %107 to i64*
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %109, %98
  %111 = getelementptr inbounds i64, i64* %29, i64 3
  store i64 %110, i64* %111, align 8
  %112 = getelementptr inbounds i64, i64* %29, i64 4
  %113 = getelementptr inbounds i64, i64* %30, i64 4
  %114 = icmp ult i64* %113, %14
  br i1 %114, label %28, label %115

; <label>:115:                                    ; preds = %28
  %116 = getelementptr %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %26
  %117 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 256
  br label %118

; <label>:118:                                    ; preds = %115, %118
  %119 = phi i64* [ %202, %118 ], [ %27, %115 ]
  %120 = phi i64* [ %203, %118 ], [ %116, %115 ]
  %121 = phi i64 [ %200, %118 ], [ %110, %115 ]
  %122 = phi i64 [ %186, %118 ], [ %96, %115 ]
  %123 = shl i64 %122, 21
  %124 = xor i64 %122, -1
  %125 = xor i64 %123, %124
  %126 = getelementptr inbounds i64, i64* %120, i64 -128
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %125, %127
  %129 = load i64, i64* %120, align 8
  %130 = and i64 %129, 2040
  %131 = getelementptr inbounds i8, i8* %13, i64 %130
  %132 = bitcast i8* %131 to i64*
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %133, %121
  %135 = add i64 %134, %128
  store i64 %135, i64* %120, align 8
  %136 = lshr i64 %135, 8
  %137 = and i64 %136, 2040
  %138 = getelementptr inbounds i8, i8* %13, i64 %137
  %139 = bitcast i8* %138 to i64*
  %140 = load i64, i64* %139, align 8
  %141 = add i64 %140, %129
  store i64 %141, i64* %119, align 8
  %142 = lshr i64 %128, 5
  %143 = xor i64 %142, %128
  %144 = getelementptr inbounds i64, i64* %120, i64 -127
  %145 = load i64, i64* %144, align 8
  %146 = add i64 %145, %143
  %147 = getelementptr inbounds i64, i64* %120, i64 1
  %148 = load i64, i64* %147, align 8
  %149 = and i64 %148, 2040
  %150 = getelementptr inbounds i8, i8* %13, i64 %149
  %151 = bitcast i8* %150 to i64*
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %146, %141
  %154 = add i64 %153, %152
  store i64 %154, i64* %147, align 8
  %155 = lshr i64 %154, 8
  %156 = and i64 %155, 2040
  %157 = getelementptr inbounds i8, i8* %13, i64 %156
  %158 = bitcast i8* %157 to i64*
  %159 = load i64, i64* %158, align 8
  %160 = add i64 %159, %148
  %161 = getelementptr inbounds i64, i64* %119, i64 1
  store i64 %160, i64* %161, align 8
  %162 = shl i64 %146, 12
  %163 = xor i64 %162, %146
  %164 = getelementptr inbounds i64, i64* %120, i64 -126
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %165, %163
  %167 = getelementptr inbounds i64, i64* %120, i64 2
  %168 = load i64, i64* %167, align 8
  %169 = and i64 %168, 2040
  %170 = getelementptr inbounds i8, i8* %13, i64 %169
  %171 = bitcast i8* %170 to i64*
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %166, %160
  %174 = add i64 %173, %172
  store i64 %174, i64* %167, align 8
  %175 = lshr i64 %174, 8
  %176 = and i64 %175, 2040
  %177 = getelementptr inbounds i8, i8* %13, i64 %176
  %178 = bitcast i8* %177 to i64*
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %179, %168
  %181 = getelementptr inbounds i64, i64* %119, i64 2
  store i64 %180, i64* %181, align 8
  %182 = lshr i64 %166, 33
  %183 = xor i64 %182, %166
  %184 = getelementptr inbounds i64, i64* %120, i64 -125
  %185 = load i64, i64* %184, align 8
  %186 = add i64 %185, %183
  %187 = getelementptr inbounds i64, i64* %120, i64 3
  %188 = load i64, i64* %187, align 8
  %189 = and i64 %188, 2040
  %190 = getelementptr inbounds i8, i8* %13, i64 %189
  %191 = bitcast i8* %190 to i64*
  %192 = load i64, i64* %191, align 8
  %193 = add i64 %186, %180
  %194 = add i64 %193, %192
  store i64 %194, i64* %187, align 8
  %195 = lshr i64 %194, 8
  %196 = and i64 %195, 2040
  %197 = getelementptr inbounds i8, i8* %13, i64 %196
  %198 = bitcast i8* %197 to i64*
  %199 = load i64, i64* %198, align 8
  %200 = add i64 %199, %188
  %201 = getelementptr inbounds i64, i64* %119, i64 3
  store i64 %200, i64* %201, align 8
  %202 = getelementptr inbounds i64, i64* %119, i64 4
  %203 = getelementptr inbounds i64, i64* %120, i64 4
  %204 = icmp ult i64* %203, %117
  br i1 %204, label %118, label %205

; <label>:205:                                    ; preds = %118
  store i64 %186, i64* %4, align 8
  store i64 %200, i64* %6, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define void @isaac_seed(%struct.isaac_state* nocapture) local_unnamed_addr #6 {
  br label %2

; <label>:2:                                      ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %75, %2 ]
  %4 = phi i64 [ -7424904924229222229, %1 ], [ %71, %2 ]
  %5 = phi i64 [ -5865837416287532563, %1 ], [ %74, %2 ]
  %6 = phi i64 [ 5259722845879046933, %1 ], [ %70, %2 ]
  %7 = phi i64 [ -9011610652101975858, %1 ], [ %73, %2 ]
  %8 = phi i64 [ -5576812576440232668, %1 ], [ %69, %2 ]
  %9 = phi i64 [ -8354558816804203872, %1 ], [ %65, %2 ]
  %10 = phi i64 [ -5046086420515862430, %1 ], [ %61, %2 ]
  %11 = phi i64 [ 7240739780546808700, %1 ], [ %57, %2 ]
  %12 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %3
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, %11
  %15 = or i64 %3, 1
  %16 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %17, %10
  %19 = or i64 %3, 2
  %20 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, %9
  %23 = or i64 %3, 3
  %24 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, %8
  %27 = or i64 %3, 4
  %28 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, %7
  %31 = or i64 %3, 5
  %32 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, %6
  %35 = or i64 %3, 6
  %36 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, %5
  %39 = or i64 %3, 7
  %40 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, %4
  %43 = sub i64 %14, %30
  %44 = lshr i64 %42, 9
  %45 = xor i64 %44, %34
  %46 = add i64 %42, %43
  %47 = sub i64 %18, %45
  %48 = shl i64 %43, 9
  %49 = xor i64 %38, %48
  %50 = add i64 %47, %43
  %51 = sub i64 %22, %49
  %52 = lshr i64 %47, 23
  %53 = xor i64 %52, %46
  %54 = add i64 %47, %51
  %55 = sub i64 %26, %53
  %56 = shl i64 %51, 15
  %57 = xor i64 %50, %56
  %58 = add i64 %55, %51
  %59 = sub i64 %30, %57
  %60 = lshr i64 %55, 14
  %61 = xor i64 %60, %54
  %62 = add i64 %55, %59
  %63 = sub i64 %45, %61
  %64 = shl i64 %59, 20
  %65 = xor i64 %58, %64
  %66 = add i64 %63, %59
  %67 = sub i64 %49, %65
  %68 = lshr i64 %63, 17
  %69 = xor i64 %68, %62
  %70 = add i64 %63, %67
  %71 = sub i64 %53, %69
  %72 = shl i64 %67, 14
  %73 = xor i64 %66, %72
  %74 = add i64 %71, %67
  store i64 %57, i64* %12, align 8
  store i64 %61, i64* %16, align 8
  store i64 %65, i64* %20, align 8
  store i64 %69, i64* %24, align 8
  store i64 %73, i64* %28, align 8
  store i64 %70, i64* %32, align 8
  store i64 %74, i64* %36, align 8
  store i64 %71, i64* %40, align 8
  %75 = add nuw nsw i64 %3, 8
  %76 = icmp slt i64 %75, 256
  br i1 %76, label %2, label %77

; <label>:77:                                     ; preds = %2
  br label %78

; <label>:78:                                     ; preds = %77, %78
  %79 = phi i64 [ %151, %78 ], [ 0, %77 ]
  %80 = phi i64 [ %147, %78 ], [ %71, %77 ]
  %81 = phi i64 [ %150, %78 ], [ %74, %77 ]
  %82 = phi i64 [ %146, %78 ], [ %70, %77 ]
  %83 = phi i64 [ %149, %78 ], [ %73, %77 ]
  %84 = phi i64 [ %145, %78 ], [ %69, %77 ]
  %85 = phi i64 [ %141, %78 ], [ %65, %77 ]
  %86 = phi i64 [ %137, %78 ], [ %61, %77 ]
  %87 = phi i64 [ %133, %78 ], [ %57, %77 ]
  %88 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %79
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, %87
  %91 = or i64 %79, 1
  %92 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, %86
  %95 = or i64 %79, 2
  %96 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, %85
  %99 = or i64 %79, 3
  %100 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, %84
  %103 = or i64 %79, 4
  %104 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, %83
  %107 = or i64 %79, 5
  %108 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %109, %82
  %111 = or i64 %79, 6
  %112 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %113, %81
  %115 = or i64 %79, 7
  %116 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 0, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, %80
  %119 = sub i64 %90, %106
  %120 = lshr i64 %118, 9
  %121 = xor i64 %120, %110
  %122 = add i64 %118, %119
  %123 = sub i64 %94, %121
  %124 = shl i64 %119, 9
  %125 = xor i64 %114, %124
  %126 = add i64 %123, %119
  %127 = sub i64 %98, %125
  %128 = lshr i64 %123, 23
  %129 = xor i64 %128, %122
  %130 = add i64 %123, %127
  %131 = sub i64 %102, %129
  %132 = shl i64 %127, 15
  %133 = xor i64 %126, %132
  %134 = add i64 %131, %127
  %135 = sub i64 %106, %133
  %136 = lshr i64 %131, 14
  %137 = xor i64 %136, %130
  %138 = add i64 %131, %135
  %139 = sub i64 %121, %137
  %140 = shl i64 %135, 20
  %141 = xor i64 %134, %140
  %142 = add i64 %139, %135
  %143 = sub i64 %125, %141
  %144 = lshr i64 %139, 17
  %145 = xor i64 %144, %138
  %146 = add i64 %139, %143
  %147 = sub i64 %129, %145
  %148 = shl i64 %143, 14
  %149 = xor i64 %142, %148
  %150 = add i64 %147, %143
  store i64 %133, i64* %88, align 8
  store i64 %137, i64* %92, align 8
  store i64 %141, i64* %96, align 8
  store i64 %145, i64* %100, align 8
  store i64 %149, i64* %104, align 8
  store i64 %146, i64* %108, align 8
  store i64 %150, i64* %112, align 8
  store i64 %147, i64* %116, align 8
  %151 = add nuw nsw i64 %79, 8
  %152 = icmp slt i64 %151, 256
  br i1 %152, label %78, label %153

; <label>:153:                                    ; preds = %78
  %154 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %0, i64 0, i32 1
  %155 = bitcast i64* %154 to i8*
  call void @llvm.memset.p0i8.i64(i8* %155, i8 0, i64 24, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #6 {
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  br label %24

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %13, %9
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  br label %24

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #1
  %20 = load i32, i32* %19, align 4
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0)
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %24, label %23

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4
  br label %24

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ]
  ret i32 %25
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone sspstrong uwtable
define zeroext i1 @acl_errno_valid(i32) local_unnamed_addr #10 {
  switch i32 %0, label %2 [
    i32 16, label %3
    i32 22, label %3
    i32 38, label %3
    i32 95, label %3
  ]

; <label>:2:                                      ; preds = %1
  br label %3

; <label>:3:                                      ; preds = %1, %1, %1, %1, %2
  %4 = phi i1 [ true, %2 ], [ false, %1 ], [ false, %1 ], [ false, %1 ], [ false, %1 ]
  ret i1 %4
}

; Function Attrs: nounwind sspstrong uwtable
define %struct._IO_FILE* @fopen_safer(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #6 {
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1)
  %4 = icmp eq %struct._IO_FILE* %3, null
  br i1 %4, label %25, label %5

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @fileno(%struct._IO_FILE* nonnull %3) #11
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %8, label %25

; <label>:8:                                      ; preds = %5
  %9 = tail call i32 @dup_safer(i32 %6) #11
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %8
  %12 = tail call i32* @__errno_location() #1
  %13 = load i32, i32* %12, align 4
  %14 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #11
  store i32 %13, i32* %12, align 4
  br label %25

; <label>:15:                                     ; preds = %8
  %16 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %3) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %15
  %19 = tail call %struct._IO_FILE* @fdopen(i32 %9, i8* %1) #11
  %20 = icmp eq %struct._IO_FILE* %19, null
  br i1 %20, label %21, label %25

; <label>:21:                                     ; preds = %18, %15
  %22 = tail call i32* @__errno_location() #1
  %23 = load i32, i32* %22, align 4
  %24 = tail call i32 @close(i32 %9) #11
  store i32 %23, i32* %22, align 4
  br label %25

; <label>:25:                                     ; preds = %5, %18, %2, %21, %11
  %26 = phi %struct._IO_FILE* [ null, %11 ], [ null, %21 ], [ null, %2 ], [ %19, %18 ], [ %3, %5 ]
  ret %struct._IO_FILE* %26
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold }