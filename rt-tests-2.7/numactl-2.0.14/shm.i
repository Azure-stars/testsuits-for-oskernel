# 0 "shm.c"
# 1 "/code/tmp/numactl-2.0.14//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/stdc-predef.h" 1 3
# 0 "<command-line>" 2
# 1 "shm.c"
# 21 "shm.c"
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/stdio.h" 1 3







# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/features.h" 1 3
# 9 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/stdio.h" 2 3
# 26 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/stdio.h" 3
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 1 3
# 48 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3

# 48 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef unsigned long size_t;
# 63 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef long ssize_t;
# 160 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef long off_t;
# 318 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef struct _IO_FILE FILE;





typedef __builtin_va_list va_list;




typedef __builtin_va_list __isoc_va_list;
# 27 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/stdio.h" 2 3
# 56 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/stdio.h" 3
typedef union _G_fpos64_t {
 char __opaque[16];
 long long __lldata;
 double __align;
} fpos_t;

extern FILE *const stdin;
extern FILE *const stdout;
extern FILE *const stderr;





FILE *fopen(const char *restrict, const char *restrict);
FILE *freopen(const char *restrict, const char *restrict, FILE *restrict);
int fclose(FILE *);

int remove(const char *);
int rename(const char *, const char *);

int feof(FILE *);
int ferror(FILE *);
int fflush(FILE *);
void clearerr(FILE *);

int fseek(FILE *, long, int);
long ftell(FILE *);
void rewind(FILE *);

int fgetpos(FILE *restrict, fpos_t *restrict);
int fsetpos(FILE *, const fpos_t *);

size_t fread(void *restrict, size_t, size_t, FILE *restrict);
size_t fwrite(const void *restrict, size_t, size_t, FILE *restrict);

int fgetc(FILE *);
int getc(FILE *);
int getchar(void);
int ungetc(int, FILE *);

int fputc(int, FILE *);
int putc(int, FILE *);
int putchar(int);

char *fgets(char *restrict, int, FILE *restrict);




int fputs(const char *restrict, FILE *restrict);
int puts(const char *);

int printf(const char *restrict, ...);
int fprintf(FILE *restrict, const char *restrict, ...);
int sprintf(char *restrict, const char *restrict, ...);
int snprintf(char *restrict, size_t, const char *restrict, ...);

int vprintf(const char *restrict, __isoc_va_list);
int vfprintf(FILE *restrict, const char *restrict, __isoc_va_list);
int vsprintf(char *restrict, const char *restrict, __isoc_va_list);
int vsnprintf(char *restrict, size_t, const char *restrict, __isoc_va_list);

int scanf(const char *restrict, ...);
int fscanf(FILE *restrict, const char *restrict, ...);
int sscanf(const char *restrict, const char *restrict, ...);
int vscanf(const char *restrict, __isoc_va_list);
int vfscanf(FILE *restrict, const char *restrict, __isoc_va_list);
int vsscanf(const char *restrict, const char *restrict, __isoc_va_list);

void perror(const char *);

int setvbuf(FILE *restrict, char *restrict, int, size_t);
void setbuf(FILE *restrict, char *restrict);

char *tmpnam(char *);
FILE *tmpfile(void);




FILE *fmemopen(void *restrict, size_t, const char *restrict);
FILE *open_memstream(char **, size_t *);
FILE *fdopen(int, const char *);
FILE *popen(const char *, const char *);
int pclose(FILE *);
int fileno(FILE *);
int fseeko(FILE *, off_t, int);
off_t ftello(FILE *);
int dprintf(int, const char *restrict, ...);
int vdprintf(int, const char *restrict, __isoc_va_list);
void flockfile(FILE *);
int ftrylockfile(FILE *);
void funlockfile(FILE *);
int getc_unlocked(FILE *);
int getchar_unlocked(void);
int putc_unlocked(int, FILE *);
int putchar_unlocked(int);
ssize_t getdelim(char **restrict, size_t *restrict, int, FILE *restrict);
ssize_t getline(char **restrict, size_t *restrict, FILE *restrict);
int renameat(int, const char *, int, const char *);
char *ctermid(char *);







char *tempnam(const char *, const char *);




char *cuserid(char *);
void setlinebuf(FILE *);
void setbuffer(FILE *, char *, size_t);
int fgetc_unlocked(FILE *);
int fputc_unlocked(int, FILE *);
int fflush_unlocked(FILE *);
size_t fread_unlocked(void *, size_t, size_t, FILE *);
size_t fwrite_unlocked(const void *, size_t, size_t, FILE *);
void clearerr_unlocked(FILE *);
int feof_unlocked(FILE *);
int ferror_unlocked(FILE *);
int fileno_unlocked(FILE *);
int getw(FILE *);
int putw(int, FILE *);
char *fgetln(FILE *, size_t *);
int asprintf(char **, const char *, ...);
int vasprintf(char **, const char *, __isoc_va_list);



char *fgets_unlocked(char *, int, FILE *);
int fputs_unlocked(const char *, FILE *);

typedef ssize_t (cookie_read_function_t)(void *, char *, size_t);
typedef ssize_t (cookie_write_function_t)(void *, const char *, size_t);
typedef int (cookie_seek_function_t)(void *, off_t *, int);
typedef int (cookie_close_function_t)(void *);

typedef struct _IO_cookie_io_functions_t {
 cookie_read_function_t *read;
 cookie_write_function_t *write;
 cookie_seek_function_t *seek;
 cookie_close_function_t *close;
} cookie_io_functions_t;

FILE *fopencookie(void *, const char *, cookie_io_functions_t);
# 22 "shm.c" 2
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/stdlib.h" 1 3
# 21 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/stdlib.h" 3
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 1 3
# 10 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef int wchar_t;
# 22 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/stdlib.h" 2 3

int atoi (const char *);
long atol (const char *);
long long atoll (const char *);
double atof (const char *);

float strtof (const char *restrict, char **restrict);
double strtod (const char *restrict, char **restrict);
long double strtold (const char *restrict, char **restrict);

long strtol (const char *restrict, char **restrict, int);
unsigned long strtoul (const char *restrict, char **restrict, int);
long long strtoll (const char *restrict, char **restrict, int);
unsigned long long strtoull (const char *restrict, char **restrict, int);

int rand (void);
void srand (unsigned);

void *malloc (size_t);
void *calloc (size_t, size_t);
void *realloc (void *, size_t);
void free (void *);
void *aligned_alloc(size_t, size_t);

_Noreturn void abort (void);
int atexit (void (*) (void));
_Noreturn void exit (int);
_Noreturn void _Exit (int);
int at_quick_exit (void (*) (void));
_Noreturn void quick_exit (int);

char *getenv (const char *);

int system (const char *);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));
void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);
long long llabs (long long);

typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;
typedef struct { long long quot, rem; } lldiv_t;

div_t div (int, int);
ldiv_t ldiv (long, long);
lldiv_t lldiv (long long, long long);

int mblen (const char *, size_t);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int wctomb (char *, wchar_t);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);




size_t __ctype_get_mb_cur_max(void);
# 101 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/stdlib.h" 3
int posix_memalign (void **, size_t, size_t);
int setenv (const char *, const char *, int);
int unsetenv (const char *);
int mkstemp (char *);
int mkostemp (char *, int);
char *mkdtemp (char *);
int getsubopt (char **, char *const *, char **);
int rand_r (unsigned *);






char *realpath (const char *restrict, char *restrict);
long int random (void);
void srandom (unsigned int);
char *initstate (unsigned int, char *, size_t);
char *setstate (char *);
int putenv (char *);
int posix_openpt (int);
int grantpt (int);
int unlockpt (int);
char *ptsname (int);
char *l64a (long);
long a64l (const char *);
void setkey (const char *);
double drand48 (void);
double erand48 (unsigned short [3]);
long int lrand48 (void);
long int nrand48 (unsigned short [3]);
long mrand48 (void);
long jrand48 (unsigned short [3]);
void srand48 (long);
unsigned short *seed48 (unsigned short [3]);
void lcong48 (unsigned short [7]);



# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/alloca.h" 1 3
# 9 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/alloca.h" 3
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 1 3
# 10 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/alloca.h" 2 3

void *alloca(size_t);
# 141 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/stdlib.h" 2 3
char *mktemp (char *);
int mkstemps (char *, int);
int mkostemps (char *, int, int);
void *valloc (size_t);
void *memalign(size_t, size_t);
int getloadavg(double *, int);
int clearenv(void);


void *reallocarray (void *, size_t, size_t);
void qsort_r (void *, size_t, size_t, int (*)(const void *, const void *, void *), void *);



int ptsname_r(int, char *, size_t);
char *ecvt(double, int, int *, int *);
char *fcvt(double, int, int *, int *);
char *gcvt(double, int, char *);
char *secure_getenv(const char *);
struct __locale_struct;
float strtof_l(const char *restrict, char **restrict, struct __locale_struct *);
double strtod_l(const char *restrict, char **restrict, struct __locale_struct *);
long double strtold_l(const char *restrict, char **restrict, struct __locale_struct *);
# 23 "shm.c" 2
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/string.h" 1 3
# 25 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/string.h" 3
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 1 3
# 341 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef struct __locale_struct * locale_t;
# 26 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/string.h" 2 3

void *memcpy (void *restrict, const void *restrict, size_t);
void *memmove (void *, const void *, size_t);
void *memset (void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void *memchr (const void *, int, size_t);

char *strcpy (char *restrict, const char *restrict);
char *strncpy (char *restrict, const char *restrict, size_t);

char *strcat (char *restrict, const char *restrict);
char *strncat (char *restrict, const char *restrict, size_t);

int strcmp (const char *, const char *);
int strncmp (const char *, const char *, size_t);

int strcoll (const char *, const char *);
size_t strxfrm (char *restrict, const char *restrict, size_t);

char *strchr (const char *, int);
char *strrchr (const char *, int);

size_t strcspn (const char *, const char *);
size_t strspn (const char *, const char *);
char *strpbrk (const char *, const char *);
char *strstr (const char *, const char *);
char *strtok (char *restrict, const char *restrict);

size_t strlen (const char *);

char *strerror (int);


# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/strings.h" 1 3
# 12 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/strings.h" 3
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 1 3
# 13 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/strings.h" 2 3




int bcmp (const void *, const void *, size_t);
void bcopy (const void *, void *, size_t);
void bzero (void *, size_t);
char *index (const char *, int);
char *rindex (const char *, int);



int ffs (int);
int ffsl (long);
int ffsll (long long);


int strcasecmp (const char *, const char *);
int strncasecmp (const char *, const char *, size_t);

int strcasecmp_l (const char *, const char *, locale_t);
int strncasecmp_l (const char *, const char *, size_t, locale_t);
# 60 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/string.h" 2 3





char *strtok_r (char *restrict, const char *restrict, char **restrict);
int strerror_r (int, char *, size_t);
char *stpcpy(char *restrict, const char *restrict);
char *stpncpy(char *restrict, const char *restrict, size_t);
size_t strnlen (const char *, size_t);
char *strdup (const char *);
char *strndup (const char *, size_t);
char *strsignal(int);
char *strerror_l (int, locale_t);
int strcoll_l (const char *, const char *, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);
void *memmem(const void *, size_t, const void *, size_t);




void *memccpy (void *restrict, const void *restrict, int, size_t);



char *strsep(char **, const char *);
size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);
void explicit_bzero (void *, size_t);




int strverscmp (const char *, const char *);
char *strchrnul(const char *, int);
char *strcasestr(const char *, const char *);
void *memrchr(const void *, int, size_t);
void *mempcpy(void *, const void *, size_t);
# 24 "shm.c" 2
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/mman.h" 1 3
# 17 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/mman.h" 3
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 1 3
# 150 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef unsigned mode_t;
# 18 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/mman.h" 2 3
# 114 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/mman.h" 3
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/mman.h" 1 3
# 115 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/mman.h" 2 3

void *mmap (void *, size_t, int, int, int, off_t);
int munmap (void *, size_t);

int mprotect (void *, size_t, int);
int msync (void *, size_t, int);

int posix_madvise (void *, size_t, int);

int mlock (const void *, size_t);
int munlock (const void *, size_t);
int mlockall (int);
int munlockall (void);


void *mremap (void *, size_t, size_t, int, ...);
int remap_file_pages (void *, size_t, int, size_t, int);
int memfd_create (const char *, unsigned);
int mlock2 (const void *, size_t, unsigned);



int madvise (void *, size_t, int);
int mincore (void *, size_t, unsigned char *);


int shm_open (const char *, int, mode_t);
int shm_unlink (const char *);
# 25 "shm.c" 2
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/ipc.h" 1 3
# 14 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/ipc.h" 3
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 1 3
# 243 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef unsigned uid_t;




typedef unsigned gid_t;




typedef int key_t;
# 15 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/ipc.h" 2 3
# 24 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/ipc.h" 3
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/ipc.h" 1 3
struct ipc_perm {
 key_t key;
 uid_t uid;
 gid_t gid;
 uid_t cuid;
 gid_t cgid;
 mode_t mode;
 int seq;
 long __pad1;
 long __pad2;
};
# 25 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/ipc.h" 2 3
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/ipcstat.h" 1 3
# 26 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/ipc.h" 2 3
# 37 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/ipc.h" 3
key_t ftok (const char *, int);
# 26 "shm.c" 2
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/shm.h" 1 3
# 14 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/shm.h" 3
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 1 3
# 83 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef long time_t;
# 233 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef int pid_t;
# 15 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/shm.h" 2 3
# 24 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/shm.h" 3
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/shm.h" 1 3


struct shmid_ds {
 struct ipc_perm shm_perm;
 size_t shm_segsz;
 time_t shm_atime;
 time_t shm_dtime;
 time_t shm_ctime;
 pid_t shm_cpid;
 pid_t shm_lpid;
 unsigned long shm_nattch;
 unsigned long __pad1;
 unsigned long __pad2;
};

struct shminfo {
 unsigned long shmmax, shmmin, shmmni, shmseg, shmall, __unused[4];
};

struct shm_info {
 int used_ids;
 unsigned long shm_tot, shm_rss, shm_swp;
 unsigned long swap_attempts, swap_successes;
};
# 25 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/shm.h" 2 3
# 59 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/shm.h" 3
typedef unsigned long shmatt_t;

void *shmat(int, const void *, int);
int shmctl(int, int, struct shmid_ds *);
int shmdt(const void *);
int shmget(key_t, size_t, int);
# 27 "shm.c" 2
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/fcntl.h" 1 3

# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/fcntl.h" 1 3
# 20 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/fcntl.h" 3
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 1 3
# 353 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
struct iovec { void *iov_base; size_t iov_len; };
# 21 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/fcntl.h" 2 3

# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/fcntl.h" 1 3
# 23 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/fcntl.h" 2 3

struct flock {
 short l_type;
 short l_whence;
 off_t l_start;
 off_t l_len;
 pid_t l_pid;
};

int creat(const char *, mode_t);
int fcntl(int, int, ...);
int open(const char *, int, ...);
int openat(int, const char *, int, ...);
int posix_fadvise(int, off_t, off_t, int);
int posix_fallocate(int, off_t, off_t);
# 159 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/fcntl.h" 3
int lockf(int, int, off_t);







struct file_handle {
 unsigned handle_bytes;
 int handle_type;
 unsigned char f_handle[];
};
struct f_owner_ex {
 int type;
 pid_t pid;
};
# 186 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/fcntl.h" 3
int fallocate(int, int, off_t, off_t);
int name_to_handle_at(int, const char *, struct file_handle *, int *, int);
int open_by_handle_at(int, struct file_handle *, int);
ssize_t readahead(int, off_t, size_t);
int sync_file_range(int, off_t, off_t, unsigned);
ssize_t vmsplice(int, const struct iovec *, size_t, unsigned);
ssize_t splice(int, off_t *, int, off_t *, size_t, unsigned);
ssize_t tee(int, int, size_t, unsigned);
# 3 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/fcntl.h" 2 3
# 28 "shm.c" 2
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/stat.h" 1 3
# 28 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/stat.h" 3
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 1 3
# 34 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef unsigned nlink_t;




typedef int blksize_t;
# 109 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef signed long int64_t;
# 124 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef unsigned short uint16_t;




typedef unsigned int uint32_t;




typedef unsigned long uint64_t;
# 165 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef unsigned long ino_t;




typedef unsigned long dev_t;
# 180 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef long blkcnt_t;
# 227 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
struct timespec { time_t tv_sec; int :8*(sizeof(time_t)-sizeof(long))*(1234==4321); long tv_nsec; int :8*(sizeof(time_t)-sizeof(long))*(1234!=4321); };
# 29 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/stat.h" 2 3

# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/stat.h" 1 3
struct stat {
 dev_t st_dev;
 ino_t st_ino;
 mode_t st_mode;
 nlink_t st_nlink;
 uid_t st_uid;
 gid_t st_gid;
 dev_t st_rdev;
 unsigned long __pad;
 off_t st_size;
 blksize_t st_blksize;
 int __pad2;
 blkcnt_t st_blocks;
 struct timespec st_atim;
 struct timespec st_mtim;
 struct timespec st_ctim;
 unsigned __unused[2];
};
# 31 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/stat.h" 2 3
# 80 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/stat.h" 3
int stat(const char *restrict, struct stat *restrict);
int fstat(int, struct stat *);
int lstat(const char *restrict, struct stat *restrict);
int fstatat(int, const char *restrict, struct stat *restrict, int);
int chmod(const char *, mode_t);
int fchmod(int, mode_t);
int fchmodat(int, const char *, mode_t, int);
mode_t umask(mode_t);
int mkdir(const char *, mode_t);
int mkfifo(const char *, mode_t);
int mkdirat(int, const char *, mode_t);
int mkfifoat(int, const char *, mode_t);


int mknod(const char *, mode_t, dev_t);
int mknodat(int, const char *, mode_t, dev_t);


int futimens(int, const struct timespec [2]);
int utimensat(int, const char *, const struct timespec [2], int);


int lchmod(const char *, mode_t);
# 124 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/stat.h" 3
struct statx_timestamp {
 int64_t tv_sec;
 uint32_t tv_nsec, __pad;
};

struct statx {
 uint32_t stx_mask;
 uint32_t stx_blksize;
 uint64_t stx_attributes;
 uint32_t stx_nlink;
 uint32_t stx_uid;
 uint32_t stx_gid;
 uint16_t stx_mode;
 uint16_t __pad0[1];
 uint64_t stx_ino;
 uint64_t stx_size;
 uint64_t stx_blocks;
 uint64_t stx_attributes_mask;
 struct statx_timestamp stx_atime;
 struct statx_timestamp stx_btime;
 struct statx_timestamp stx_ctime;
 struct statx_timestamp stx_mtime;
 uint32_t stx_rdev_major;
 uint32_t stx_rdev_minor;
 uint32_t stx_dev_major;
 uint32_t stx_dev_minor;
 uint64_t __pad1[14];
};

int statx(int, const char *restrict, int, unsigned, struct statx *restrict);
# 29 "shm.c" 2
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/stdarg.h" 1 3
# 10 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/stdarg.h" 3
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 1 3
# 11 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/stdarg.h" 2 3
# 30 "shm.c" 2
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/errno.h" 1 3
# 10 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/errno.h" 3
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/errno.h" 1 3
# 11 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/errno.h" 2 3


__attribute__((const))

int *__errno_location(void);



extern char *program_invocation_short_name, *program_invocation_name;
# 31 "shm.c" 2
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/unistd.h" 1 3
# 37 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/unistd.h" 3
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 1 3
# 68 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef long intptr_t;
# 258 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef unsigned useconds_t;
# 38 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/unistd.h" 2 3

int pipe(int [2]);
int pipe2(int [2], int);
int close(int);
int posix_close(int, int);
int dup(int);
int dup2(int, int);
int dup3(int, int, int);
off_t lseek(int, off_t, int);
int fsync(int);
int fdatasync(int);

ssize_t read(int, void *, size_t);
ssize_t write(int, const void *, size_t);
ssize_t pread(int, void *, size_t, off_t);
ssize_t pwrite(int, const void *, size_t, off_t);

int chown(const char *, uid_t, gid_t);
int fchown(int, uid_t, gid_t);
int lchown(const char *, uid_t, gid_t);
int fchownat(int, const char *, uid_t, gid_t, int);

int link(const char *, const char *);
int linkat(int, const char *, int, const char *, int);
int symlink(const char *, const char *);
int symlinkat(const char *, int, const char *);
ssize_t readlink(const char *restrict, char *restrict, size_t);
ssize_t readlinkat(int, const char *restrict, char *restrict, size_t);
int unlink(const char *);
int unlinkat(int, const char *, int);
int rmdir(const char *);
int truncate(const char *, off_t);
int ftruncate(int, off_t);






int access(const char *, int);
int faccessat(int, const char *, int, int);

int chdir(const char *);
int fchdir(int);
char *getcwd(char *, size_t);

unsigned alarm(unsigned);
unsigned sleep(unsigned);
int pause(void);

pid_t fork(void);
pid_t _Fork(void);
int execve(const char *, char *const [], char *const []);
int execv(const char *, char *const []);
int execle(const char *, const char *, ...);
int execl(const char *, const char *, ...);
int execvp(const char *, char *const []);
int execlp(const char *, const char *, ...);
int fexecve(int, char *const [], char *const []);
_Noreturn void _exit(int);

pid_t getpid(void);
pid_t getppid(void);
pid_t getpgrp(void);
pid_t getpgid(pid_t);
int setpgid(pid_t, pid_t);
pid_t setsid(void);
pid_t getsid(pid_t);
char *ttyname(int);
int ttyname_r(int, char *, size_t);
int isatty(int);
pid_t tcgetpgrp(int);
int tcsetpgrp(int, pid_t);

uid_t getuid(void);
uid_t geteuid(void);
gid_t getgid(void);
gid_t getegid(void);
int getgroups(int, gid_t []);
int setuid(uid_t);
int seteuid(uid_t);
int setgid(gid_t);
int setegid(gid_t);

char *getlogin(void);
int getlogin_r(char *, size_t);
int gethostname(char *, size_t);
char *ctermid(char *);

int getopt(int, char * const [], const char *);
extern char *optarg;
extern int optind, opterr, optopt;

long pathconf(const char *, int);
long fpathconf(int, int);
long sysconf(int);
size_t confstr(int, char *, size_t);






int setreuid(uid_t, uid_t);
int setregid(gid_t, gid_t);
int lockf(int, int, off_t);
long gethostid(void);
int nice(int);
void sync(void);
pid_t setpgrp(void);
char *crypt(const char *, const char *);
void encrypt(char *, int);
void swab(const void *restrict, void *restrict, ssize_t);




int usleep(unsigned);
unsigned ualarm(unsigned, unsigned);






int brk(void *);
void *sbrk(intptr_t);
pid_t vfork(void);
int vhangup(void);
int chroot(const char *);
int getpagesize(void);
int getdtablesize(void);
int sethostname(const char *, size_t);
int getdomainname(char *, size_t);
int setdomainname(const char *, size_t);
int setgroups(size_t, const gid_t *);
char *getpass(const char *);
int daemon(int, int);
void setusershell(void);
void endusershell(void);
char *getusershell(void);
int acct(const char *);
long syscall(long, ...);
int execvpe(const char *, char *const [], char *const []);
int issetugid(void);
int getentropy(void *, size_t);
extern int optreset;



extern char **environ;
int setresuid(uid_t, uid_t, uid_t);
int setresgid(gid_t, gid_t, gid_t);
int getresuid(uid_t *, uid_t *, uid_t *);
int getresgid(gid_t *, gid_t *, gid_t *);
char *get_current_dir_name(void);
int syncfs(int);
int euidaccess(const char *, int);
int eaccess(const char *, int);
ssize_t copy_file_range(int, off_t *, int, off_t *, size_t, unsigned);
pid_t gettid(void);
# 260 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/unistd.h" 3
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/posix.h" 1 3
# 261 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/unistd.h" 2 3
# 32 "shm.c" 2
# 1 "numa.h" 1
# 25 "numa.h"
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/stddef.h" 1 3
# 19 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/stddef.h" 3
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 1 3
# 28 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef struct { long long __ll; long double __ld; } max_align_t;
# 58 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef long ptrdiff_t;
# 20 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/stddef.h" 2 3
# 26 "numa.h" 2

# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/types.h" 1 3
# 57 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/types.h" 3
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 1 3
# 78 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef long register_t;
# 88 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef long suseconds_t;





typedef signed char int8_t;




typedef signed short int16_t;




typedef signed int int32_t;
# 139 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef unsigned long u_int64_t;
# 185 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef unsigned long fsblkcnt_t;




typedef unsigned long fsfilcnt_t;
# 207 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef void * timer_t;




typedef int clockid_t;




typedef long clock_t;
# 238 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef unsigned id_t;
# 271 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef struct __pthread * pthread_t;





typedef int pthread_once_t;




typedef unsigned pthread_key_t;




typedef int pthread_spinlock_t;




typedef struct { unsigned __attr; } pthread_mutexattr_t;




typedef struct { unsigned __attr; } pthread_condattr_t;




typedef struct { unsigned __attr; } pthread_barrierattr_t;




typedef struct { unsigned __attr[2]; } pthread_rwlockattr_t;
# 376 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef struct { union { int __i[sizeof(long)==8?14:9]; volatile int __vi[sizeof(long)==8?14:9]; unsigned long __s[sizeof(long)==8?7:9]; } __u; } pthread_attr_t;




typedef struct { union { int __i[sizeof(long)==8?10:6]; volatile int __vi[sizeof(long)==8?10:6]; volatile void *volatile __p[sizeof(long)==8?5:6]; } __u; } pthread_mutex_t;
# 391 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef struct { union { int __i[12]; volatile int __vi[12]; void *__p[12*sizeof(int)/sizeof(void*)]; } __u; } pthread_cond_t;
# 401 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef struct { union { int __i[sizeof(long)==8?14:8]; volatile int __vi[sizeof(long)==8?14:8]; void *__p[sizeof(long)==8?7:8]; } __u; } pthread_rwlock_t;




typedef struct { union { int __i[sizeof(long)==8?8:5]; volatile int __vi[sizeof(long)==8?8:5]; void *__p[sizeof(long)==8?4:5]; } __u; } pthread_barrier_t;
# 58 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/types.h" 2 3


typedef unsigned char u_int8_t;
typedef unsigned short u_int16_t;
typedef unsigned u_int32_t;
typedef char *caddr_t;
typedef unsigned char u_char;
typedef unsigned short u_short, ushort;
typedef unsigned u_int, uint;
typedef unsigned long u_long, ulong;
typedef long long quad_t;
typedef unsigned long long u_quad_t;
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/endian.h" 1 3
# 10 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/endian.h" 3
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 1 3
# 11 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/endian.h" 2 3
# 19 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/endian.h" 3
static inline uint16_t __bswap16(uint16_t __x)
{
 return __x<<8 | __x>>8;
}

static inline uint32_t __bswap32(uint32_t __x)
{
 return __x>>24 | __x>>8&0xff00 | __x<<8&0xff0000 | __x<<24;
}

static inline uint64_t __bswap64(uint64_t __x)
{
 return __bswap32(__x)+0ULL<<32 | __bswap32(__x>>32);
}
# 71 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/types.h" 2 3
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/select.h" 1 3
# 16 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/select.h" 3
# 1 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 1 3
# 222 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
struct timeval { time_t tv_sec; suseconds_t tv_usec; };
# 347 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/bits/alltypes.h" 3
typedef struct __sigset_t { unsigned long __bits[128/sizeof(long)]; } sigset_t;
# 17 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/select.h" 2 3



typedef unsigned long fd_mask;

typedef struct {
 unsigned long fds_bits[1024 / 8 / sizeof(long)];
} fd_set;






int select (int, fd_set *restrict, fd_set *restrict, fd_set *restrict, struct timeval *restrict);
int pselect (int, fd_set *restrict, fd_set *restrict, fd_set *restrict, const struct timespec *restrict, const sigset_t *restrict);
# 72 "/opt/loongarch64-linux-musl-cross/loongarch64-linux-musl/include/sys/types.h" 2 3
# 28 "numa.h" 2
# 40 "numa.h"

# 40 "numa.h"
typedef struct {
        unsigned long n[2048/(sizeof(unsigned long)*8)];
} nodemask_t;

struct bitmask {
 unsigned long size;
 unsigned long *maskp;
};


int numa_bitmask_isbitset(const struct bitmask *, unsigned int);
struct bitmask *numa_bitmask_setall(struct bitmask *);
struct bitmask *numa_bitmask_clearall(struct bitmask *);
struct bitmask *numa_bitmask_setbit(struct bitmask *, unsigned int);
struct bitmask *numa_bitmask_clearbit(struct bitmask *, unsigned int);
unsigned int numa_bitmask_nbytes(struct bitmask *);
unsigned int numa_bitmask_weight(const struct bitmask *);
struct bitmask *numa_bitmask_alloc(unsigned int);
void numa_bitmask_free(struct bitmask *);
int numa_bitmask_equal(const struct bitmask *, const struct bitmask *);
void copy_nodemask_to_bitmask(nodemask_t *, struct bitmask *);
void copy_bitmask_to_nodemask(struct bitmask *, nodemask_t *);
void copy_bitmask_to_bitmask(struct bitmask *, struct bitmask *);



static inline void nodemask_zero(nodemask_t *mask)
{
 struct bitmask tmp;

 tmp.maskp = (unsigned long *)mask;
 tmp.size = sizeof(nodemask_t) * 8;
 numa_bitmask_clearall(&tmp);
}

static inline void nodemask_zero_compat(nodemask_t *mask)
{
 struct bitmask tmp;

 tmp.maskp = (unsigned long *)mask;
 tmp.size = sizeof(nodemask_t) * 8;
 numa_bitmask_clearall(&tmp);
}

static inline void nodemask_set_compat(nodemask_t *mask, int node)
{
 mask->n[node / (8*sizeof(unsigned long))] |=
  (1UL<<(node%(8*sizeof(unsigned long))));
}

static inline void nodemask_clr_compat(nodemask_t *mask, int node)
{
 mask->n[node / (8*sizeof(unsigned long))] &=
  ~(1UL<<(node%(8*sizeof(unsigned long))));
}

static inline int nodemask_isset_compat(const nodemask_t *mask, int node)
{
 if ((unsigned)node >= 2048)
  return 0;
 if (mask->n[node / (8*sizeof(unsigned long))] &
  (1UL<<(node%(8*sizeof(unsigned long)))))
  return 1;
 return 0;
}

static inline int nodemask_equal(const nodemask_t *a, const nodemask_t *b)
{
 struct bitmask tmp_a, tmp_b;

 tmp_a.maskp = (unsigned long *)a;
 tmp_a.size = sizeof(nodemask_t) * 8;

 tmp_b.maskp = (unsigned long *)b;
 tmp_b.size = sizeof(nodemask_t) * 8;

 return numa_bitmask_equal(&tmp_a, &tmp_b);
}

static inline int nodemask_equal_compat(const nodemask_t *a, const nodemask_t *b)
{
 struct bitmask tmp_a, tmp_b;

 tmp_a.maskp = (unsigned long *)a;
 tmp_a.size = sizeof(nodemask_t) * 8;

 tmp_b.maskp = (unsigned long *)b;
 tmp_b.size = sizeof(nodemask_t) * 8;

 return numa_bitmask_equal(&tmp_a, &tmp_b);
}



int numa_available(void);




int numa_max_node(void);
int numa_max_possible_node(void);

int numa_preferred(void);


long long numa_node_size64(int node, long long *freep);
long long numa_node_size(int node, long long *freep);

int numa_pagesize(void);



extern struct bitmask *numa_all_nodes_ptr;


extern struct bitmask *numa_nodes_ptr;


extern nodemask_t numa_all_nodes;


extern struct bitmask *numa_all_cpus_ptr;


extern struct bitmask *numa_no_nodes_ptr;


extern nodemask_t numa_no_nodes;


void numa_bind(struct bitmask *nodes);


void numa_set_interleave_mask(struct bitmask *nodemask);


struct bitmask *numa_get_interleave_mask(void);


struct bitmask *numa_allocate_nodemask(void);

static inline void numa_free_nodemask(struct bitmask *b)
{
 numa_bitmask_free(b);
}


void numa_set_preferred(int node);


void numa_set_localalloc(void);


void numa_set_membind(struct bitmask *nodemask);


struct bitmask *numa_get_membind(void);


struct bitmask *numa_get_mems_allowed(void);

int numa_get_interleave_node(void);





void *numa_alloc_interleaved_subset(size_t size, struct bitmask *nodemask);

void *numa_alloc_interleaved(size_t size);

void *numa_alloc_onnode(size_t size, int node);

void *numa_alloc_local(size_t size);

void *numa_alloc(size_t size);

void *numa_realloc(void *old_addr, size_t old_size, size_t new_size);

void numa_free(void *mem, size_t size);





void numa_interleave_memory(void *mem, size_t size, struct bitmask *mask);


void numa_tonode_memory(void *start, size_t size, int node);


void numa_tonodemask_memory(void *mem, size_t size, struct bitmask *mask);


void numa_setlocal_memory(void *start, size_t size);


void numa_police_memory(void *start, size_t size);


int numa_run_on_node_mask(struct bitmask *mask);

int numa_run_on_node_mask_all(struct bitmask *mask);

int numa_run_on_node(int node);

struct bitmask * numa_get_run_node_mask(void);


void numa_set_bind_policy(int strict);


void numa_set_strict(int flag);


int numa_num_possible_nodes(void);


int numa_num_possible_cpus(void);


int numa_num_configured_nodes(void);


int numa_num_configured_cpus(void);


int numa_num_task_cpus(void);
int numa_num_thread_cpus(void);


int numa_num_task_nodes(void);
int numa_num_thread_nodes(void);


struct bitmask *numa_allocate_cpumask(void);

static inline void numa_free_cpumask(struct bitmask *b)
{
 numa_bitmask_free(b);
}


int numa_node_to_cpus(int, struct bitmask *);

void numa_node_to_cpu_update(void);


int numa_node_of_cpu(int cpu);


int numa_distance(int node1, int node2);





void numa_error(char *where);



extern int numa_exit_on_error;


void numa_warn(int num, char *fmt, ...);


extern int numa_exit_on_warn;

int numa_migrate_pages(int pid, struct bitmask *from, struct bitmask *to);

int numa_move_pages(int pid, unsigned long count, void **pages,
  const int *nodes, int *status, int flags);

int numa_sched_getaffinity(pid_t, struct bitmask *);
int numa_sched_setaffinity(pid_t, struct bitmask *);


struct bitmask *numa_parse_nodestring(const char *);



struct bitmask *numa_parse_nodestring_all(const char *);


struct bitmask *numa_parse_cpustring(const char *);



struct bitmask *numa_parse_cpustring_all(const char *);







static inline void numa_set_interleave_mask_compat(nodemask_t *nodemask)
{
 struct bitmask tmp;

 tmp.maskp = (unsigned long *)nodemask;
 tmp.size = sizeof(nodemask_t) * 8;
 numa_set_interleave_mask(&tmp);
}

static inline nodemask_t numa_get_interleave_mask_compat(void)
{
 struct bitmask *tp;
 nodemask_t mask;

 tp = numa_get_interleave_mask();
 copy_bitmask_to_nodemask(tp, &mask);
 numa_bitmask_free(tp);
 return mask;
}

static inline void numa_bind_compat(nodemask_t *mask)
{
 struct bitmask *tp;

 tp = numa_allocate_nodemask();
 copy_nodemask_to_bitmask(mask, tp);
 numa_bind(tp);
 numa_bitmask_free(tp);
}

static inline void numa_set_membind_compat(nodemask_t *mask)
{
 struct bitmask tmp;

 tmp.maskp = (unsigned long *)mask;
 tmp.size = sizeof(nodemask_t) * 8;
 numa_set_membind(&tmp);
}

static inline nodemask_t numa_get_membind_compat(void)
{
 struct bitmask *tp;
 nodemask_t mask;

 tp = numa_get_membind();
 copy_bitmask_to_nodemask(tp, &mask);
 numa_bitmask_free(tp);
 return mask;
}

static inline void *numa_alloc_interleaved_subset_compat(size_t size,
     const nodemask_t *mask)
{
 struct bitmask tmp;

 tmp.maskp = (unsigned long *)mask;
 tmp.size = sizeof(nodemask_t) * 8;
 return numa_alloc_interleaved_subset(size, &tmp);
}

static inline int numa_run_on_node_mask_compat(const nodemask_t *mask)
{
 struct bitmask tmp;

 tmp.maskp = (unsigned long *)mask;
 tmp.size = sizeof(nodemask_t) * 8;
 return numa_run_on_node_mask(&tmp);
}

static inline nodemask_t numa_get_run_node_mask_compat(void)
{
 struct bitmask *tp;
 nodemask_t mask;

 tp = numa_get_run_node_mask();
 copy_bitmask_to_nodemask(tp, &mask);
 numa_bitmask_free(tp);
 return mask;
}

static inline void numa_interleave_memory_compat(void *mem, size_t size,
      const nodemask_t *mask)
{
 struct bitmask tmp;

 tmp.maskp = (unsigned long *)mask;
 tmp.size = sizeof(nodemask_t) * 8;
 numa_interleave_memory(mem, size, &tmp);
}

static inline void numa_tonodemask_memory_compat(void *mem, size_t size,
      const nodemask_t *mask)
{
 struct bitmask tmp;

 tmp.maskp = (unsigned long *)mask;
 tmp.size = sizeof(nodemask_t) * 8;
 numa_tonodemask_memory(mem, size, &tmp);
}

static inline int numa_sched_getaffinity_compat(pid_t pid, unsigned len,
      unsigned long *mask)
{
 struct bitmask tmp;

 tmp.maskp = (unsigned long *)mask;
 tmp.size = len * 8;
 return numa_sched_getaffinity(pid, &tmp);
}

static inline int numa_sched_setaffinity_compat(pid_t pid, unsigned len,
      unsigned long *mask)
{
 struct bitmask tmp;

 tmp.maskp = (unsigned long *)mask;
 tmp.size = len * 8;
 return numa_sched_setaffinity(pid, &tmp);
}

static inline int numa_node_to_cpus_compat(int node, unsigned long *buffer,
       int buffer_len)
{
 struct bitmask tmp;

 tmp.maskp = (unsigned long *)buffer;
 tmp.size = buffer_len * 8;
 return numa_node_to_cpus(node, &tmp);
}
# 33 "shm.c" 2
# 1 "numaif.h" 1
# 11 "numaif.h"
extern long get_mempolicy(int *mode, unsigned long *nmask,
   unsigned long maxnode, void *addr, unsigned flags);
extern long mbind(void *start, unsigned long len, int mode,
 const unsigned long *nmask, unsigned long maxnode, unsigned flags);
extern long set_mempolicy(int mode, const unsigned long *nmask,
     unsigned long maxnode);
extern long migrate_pages(int pid, unsigned long maxnode,
     const unsigned long *frommask,
     const unsigned long *tomask);

extern long move_pages(int pid, unsigned long count,
  void **pages, const int *nodes, int *status, int flags);
# 34 "shm.c" 2
# 1 "numaint.h" 1


extern int numa_sched_setaffinity_v1(pid_t pid, unsigned len, const unsigned long *mask);
extern int numa_sched_getaffinity_v1(pid_t pid, unsigned len, const unsigned long *mask);
extern int numa_sched_setaffinity_v1_int(pid_t pid, unsigned len,const unsigned long *mask);
extern int numa_sched_getaffinity_v1_int(pid_t pid, unsigned len,const unsigned long *mask);
extern int numa_sched_setaffinity_v2(pid_t pid, struct bitmask *mask);
extern int numa_sched_getaffinity_v2(pid_t pid, struct bitmask *mask);
extern int numa_sched_setaffinity_v2_int(pid_t pid, struct bitmask *mask);
extern int numa_sched_getaffinity_v2_int(pid_t pid, struct bitmask *mask);
# 21 "numaint.h"
enum numa_warn {
 W_nosysfs,
 W_noproc,
 W_badmeminfo,
 W_nosysfs2,
 W_cpumap,
 W_numcpus,
 W_noderunmask,
 W_distance,
 W_memory,
 W_cpuparse,
 W_nodeparse,
 W_blockdev1,
 W_blockdev2,
 W_blockdev3,
 W_blockdev4,
 W_blockdev5,
 W_netlink1,
 W_netlink2,
 W_netlink3,
 W_net1,
 W_net2,
 W_class1,
 W_class2,
 W_pci1,
 W_pci2,
 W_node_parse1,
 W_node_parse2,
 W_nonode,
 W_badchar,
};
# 35 "shm.c" 2
# 1 "util.h" 1
extern void printmask(char *name, struct bitmask *mask);
extern int find_first(struct bitmask *mask);
extern struct bitmask *nodemask(char *s);
extern struct bitmask *cpumask(char *s, int *ncpus);
extern int read_sysctl(char *name);
extern void complain(char *fmt, ...);
extern void nerror(char *fmt, ...);


extern void usage(void);

extern long memsize(char *s);
extern int parse_policy(char *name, char *arg);
extern void print_policies(void);
extern char *policy_name(int policy);
# 36 "shm.c" 2
# 1 "shm.h" 1

extern int shmfd;
extern long shmid;
extern char *shmptr;
extern unsigned long long shmlen;
extern mode_t shmmode;
extern unsigned long long shmoffset;
extern int shmflags;

extern void dump_shm(void);
extern void dump_shm_nodes(void);
extern void attach_shared(char *, char *);
extern void attach_sysvshm(char *, char *);
extern void verify_shm(int policy, struct bitmask *);


extern int exitcode;
# 37 "shm.c" 2

int shmfd = -1;
long shmid = 0;
char *shmptr;
unsigned long long shmlen;
mode_t shmmode = 0600;
unsigned long long shmoffset;
int shmflags;
static int shm_pagesize;

long huge_page_size(void)
{
 size_t len = 0;
 char *line = 
# 50 "shm.c" 3
             ((void*)0)
# 50 "shm.c"
                 ;
 FILE *f = fopen("/proc/meminfo", "r");
 if (f != 
# 52 "shm.c" 3
         ((void*)0)
# 52 "shm.c"
             ) {
  while (getdelim(&line, &len, '\n', f) > 0) {
   int ps;
   if (sscanf(line, "Hugepagesize: %d kB", &ps) == 1)
    return ps * 1024;
  }
  free(line);
  fclose(f);
 }
 return getpagesize();
}

static void check_region(char *opt)
{
 if (((unsigned long)shmptr % shm_pagesize) || (shmlen % shm_pagesize)) {
  fprintf(
# 67 "shm.c" 3
         (stderr)
# 67 "shm.c"
               , "numactl: policy region not page aligned\n");
  exit(1);
 }
 if (!shmlen) {
  fprintf(
# 71 "shm.c" 3
         (stderr)
# 71 "shm.c"
               ,
  "numactl: policy region length not specified before %s\n",
   opt);
  exit(1);
 }
}

static key_t sysvkey(char *name)
{
 int fd;
 key_t key = ftok(name, shmid);
 if (key >= 0)
  return key;

 fprintf(
# 85 "shm.c" 3
        (stderr)
# 85 "shm.c"
              , "numactl: Creating shm key file %s mode %04o\n",
  name, shmmode);
 fd = creat(name, shmmode);
 if (fd < 0)
  nerror("cannot create key for shm %s\n", name);
 key = ftok(name, shmid);
 if (key < 0)
  nerror("cannot get key for newly created shm key file %s",
         name);
 return key;
}


void attach_sysvshm(char *name, char *opt)
{
 struct shmid_ds s;
 key_t key = sysvkey(name);

 shmfd = shmget(key, shmlen, shmflags);
 if (shmfd < 0 && 
# 104 "shm.c" 3
                 (*__errno_location()) 
# 104 "shm.c"
                       == 
# 104 "shm.c" 3
                          2
# 104 "shm.c"
                                ) {
  if (shmlen == 0)
   complain(
                     "need a --length to create a sysv shared memory segment");
  fprintf(
# 108 "shm.c" 3
         (stderr)
# 108 "shm.c"
               ,
         "numactl: Creating shared memory segment %s id %ld mode %04o length %.fMB\n",
   name, shmid, shmmode, ((double)shmlen) / (1024*1024) );
  shmfd = shmget(key, shmlen, 
# 111 "shm.c" 3
                             01000
# 111 "shm.c"
                                      |shmmode|shmflags);
  if (shmfd < 0)
   nerror("cannot create shared memory segment");
 }

 if (shmlen == 0) {
  if (shmctl(shmfd, 
# 117 "shm.c" 3
                   2
# 117 "shm.c"
                           , &s) < 0)
   perror("numactl: " "shmctl IPC_STAT"),exit(1);
  shmlen = s.shm_segsz;
 }

 shmptr = shmat(shmfd, 
# 122 "shm.c" 3
                      ((void*)0)
# 122 "shm.c"
                          , 0);
 if (shmptr == (void*)-1)
  perror("numactl: " "shmat"),exit(1);
 shmptr += shmoffset;

 shm_pagesize = (shmflags & 04000) ? huge_page_size() : getpagesize();

 check_region(opt);
}


void attach_shared(char *name, char *opt)
{
 struct stat64 st;

 shmfd = open(name, 
# 137 "shm.c" 3
                   02
# 137 "shm.c"
                         );
 if (shmfd < 0) {
  
# 139 "shm.c" 3
 (*__errno_location()) 
# 139 "shm.c"
       = 0;
  if (shmlen == 0)
          complain("need a --length to create a shared file");
  shmfd = open(name, 
# 142 "shm.c" 3
                    02
# 142 "shm.c"
                          |
# 142 "shm.c" 3
                           0100
# 142 "shm.c"
                                  , shmmode);
  if (shmfd < 0)
   nerror("cannot create file %s", name);
 }
 if (fstat64(shmfd, &st) < 0)
  perror("numactl: " "shm stat"),exit(1);
 if (shmlen > st.st_size) {
  if (ftruncate64(shmfd, shmlen) < 0) {



   perror("ftruncate");
   exit(1);
  }
 }

 shm_pagesize = st.st_blksize;

 check_region(opt);



 shmptr = mmap64(
# 164 "shm.c" 3
                ((void*)0)
# 164 "shm.c"
                    , shmlen, 
# 164 "shm.c" 3
                              1 
# 164 "shm.c"
                                        | 
# 164 "shm.c" 3
                                          2
# 164 "shm.c"
                                                    , 
# 164 "shm.c" 3
                                                      0x01
# 164 "shm.c"
                                                                , shmfd, shmoffset);
 if (shmptr == (char*)-1)
  perror("numactl: " "shm mmap"),exit(1);

}

static void
dumppol(unsigned long long start, unsigned long long end, int pol, struct bitmask *mask)
{
 if (pol == 0)
  return;
 printf("%016llx-%016llx: %s ",
        shmoffset+start,
        shmoffset+end,
        policy_name(pol));
 printmask("", mask);
}


void dump_shm(void)
{
 struct bitmask *nodes, *prevnodes;
 int prevpol = -1, pol;
 unsigned long long c, start;

 start = 0;
 if (shmlen == 0) {
  printf("nothing to dump\n");
  return;
 }

 nodes = numa_allocate_nodemask();
 prevnodes = numa_allocate_nodemask();

 for (c = 0; c < shmlen; c += shm_pagesize) {
  if (get_mempolicy(&pol, nodes->maskp, nodes->size, c+shmptr,
      (1<<1)) < 0)
   perror("numactl: " "get_mempolicy on shm"),exit(1);
  if (pol == prevpol)
   continue;
  if (prevpol != -1)
   dumppol(start, c, prevpol, prevnodes);
  prevnodes = nodes;
  prevpol = pol;
  start = c;
 }
 dumppol(start, c, prevpol, prevnodes);
}

static void dumpnode(unsigned long long start, unsigned long long end, int node)
{
 printf("%016llx-%016llx: %d\n", shmoffset+start, shmoffset+end, node);
}


void dump_shm_nodes(void)
{
 int prevnode = -1, node;
 unsigned long long c, start;

 start = 0;
 if (shmlen == 0) {
  printf("nothing to dump\n");
  return;
 }

 for (c = 0; c < shmlen; c += shm_pagesize) {
  if (get_mempolicy(&node, 
# 231 "shm.c" 3
                          ((void*)0)
# 231 "shm.c"
                              , 0, c+shmptr,
      (1<<1)|(1<<0)) < 0)
   perror("numactl: " "get_mempolicy on shm"),exit(1);
  if (node == prevnode)
   continue;
  if (prevnode != -1)
   dumpnode(start, c, prevnode);
  prevnode = node;
  start = c;
 }
 dumpnode(start, c, prevnode);
}

static void vwarn(char *ptr, char *fmt, ...)
{
 va_list ap;
 unsigned long off = (unsigned long)ptr - (unsigned long)shmptr;
 
# 248 "shm.c" 3
__builtin_va_start(
# 248 "shm.c"
ap
# 248 "shm.c" 3
,
# 248 "shm.c"
fmt
# 248 "shm.c" 3
)
# 248 "shm.c"
                ;
 printf("numactl verify %lx(%lx): ", (unsigned long)ptr, off);
 vprintf(fmt, ap);
 
# 251 "shm.c" 3
__builtin_va_end(
# 251 "shm.c"
ap
# 251 "shm.c" 3
)
# 251 "shm.c"
          ;
 exitcode = 1;
}

static unsigned interleave_next(unsigned cur, struct bitmask *mask)
{
 int numa_num_nodes = numa_num_possible_nodes();

 ++cur;
 while (!numa_bitmask_isbitset(mask, cur)) {
  cur = (cur+1) % numa_num_nodes;
 }
 return cur;
}


void verify_shm(int policy, struct bitmask *nodes)
{
 char *p;
 int ilnode, node;
 int pol2;
 struct bitmask *nodes2;

 nodes2 = numa_allocate_nodemask();

 if (policy == 3) {
  if (get_mempolicy(&ilnode, 
# 277 "shm.c" 3
                            ((void*)0)
# 277 "shm.c"
                                , 0, shmptr,
     (1<<1)|(1<<0))
      < 0)
   perror("numactl: " "get_mempolicy"),exit(1);
 }

 for (p = shmptr; p - (char *)shmptr < shmlen; p += shm_pagesize) {
  if (get_mempolicy(&pol2, nodes2->maskp, nodes2->size, p,
       (1<<1)) < 0)
   perror("numactl: " "get_mempolicy"),exit(1);
  if (pol2 != policy) {
   vwarn(p, "wrong policy %s, expected %s\n",
         policy_name(pol2), policy_name(policy));
   return;
  }
  if (memcmp(nodes2, nodes, numa_bitmask_nbytes(nodes))) {
   vwarn(p, "mismatched node mask\n");
   printmask("expected", nodes);
   printmask("real", nodes2);
  }

  if (get_mempolicy(&node, 
# 298 "shm.c" 3
                          ((void*)0)
# 298 "shm.c"
                              , 0, p, (1<<1)|(1<<0)) < 0)
   perror("numactl: " "get_mempolicy"),exit(1);

  switch (policy) {
  case 3:
   if (node < 0 || !numa_bitmask_isbitset(nodes2, node))
    vwarn(p, "interleave node out of range %d\n", node);
   if (node != ilnode) {
    vwarn(p, "expected interleave node %d, got %d\n",
         ilnode,node);
    return;
   }
   ilnode = interleave_next(ilnode, nodes2);
   break;
  case 1:
  case 2:
   if (!numa_bitmask_isbitset(nodes2, node)) {
    vwarn(p, "unexpected node %d\n", node);
    printmask("expected", nodes2);
   }
   break;

  case 0:
   break;

  }
 }

}
