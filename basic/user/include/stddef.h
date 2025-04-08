#ifndef __STDDEF_H__
#define __STDDEF_H__

/* Represents true-or-false values */
typedef int bool;

/* Explicitly-sized versions of integer types */
typedef char int8;
typedef unsigned char uint8;
typedef short int16;
typedef unsigned short uint16;
typedef int int32;
typedef unsigned int uint32;
typedef long long int64;
typedef unsigned long long uint64;
typedef unsigned int uint;

#define ULONG_MAX (0xffffffffffffffffULL)
#define LONG_MAX (0x7fffffffffffffffLL)
#define INTMAX_MAX LONG_MAX
#define UINT_MAX (0xffffffffU)
#define INT_MAX (0x7fffffff)
#define UCHAR_MAX (0xffU)
#define CHAR_MAX (0x7f)

/* *
 * Pointers and addresses are 32 bits long.
 * We use pointer types to represent addresses,
 * uintptr_t to represent the numerical values of addresses.
 * */
#if __riscv_xlen == 64
typedef int64 intptr_t;
typedef uint64 uintptr_t;
#elif __riscv_xlen == 32
typedef int32_t intptr_t;
typedef uint32 uintptr_t;
#else
typedef int64 intptr_t;
typedef uint64 uintptr_t;
#endif

/* size_t is used for memory object sizes */
typedef uintptr_t size_t;
typedef intptr_t ssize_t;

typedef int pid_t;
typedef long int clock_t;

#define NULL ((void *)0)

#define SIGCHLD 17

#define va_start(ap, last) (__builtin_va_start(ap, last))
#define va_arg(ap, type) (__builtin_va_arg(ap, type))
#define va_end(ap) (__builtin_va_end(ap))
#define va_copy(d, s) (__builtin_va_copy(d, s))
typedef __builtin_va_list va_list;

// referenced on https://github.com/bminor/glibc/blob/master/sysdeps/unix/sysv/linux/bits/fcntl-linux.h
#define O_RDONLY 0x000
#define O_WRONLY 0x001
#define O_RDWR 0x002 // 可读可写
#define O_CREATE 0x40
#define O_DIRECTORY 0x10000

#define DIR 0x040000
#define FILE 0x100000

#define AT_FDCWD -100

typedef struct
{
    uint64 sec;  // 自 Unix 纪元起的秒数
    uint64 usec; // 微秒数
} TimeVal;

typedef unsigned int mode_t;
typedef long int off_t;

#if defined(__x86_64__)
struct kstat
{
    unsigned long st_dev;
    unsigned long st_ino;
    unsigned long st_nlink;

    unsigned int st_mode;
    unsigned int st_uid;
    unsigned int st_gid;
    unsigned int __pad0;
    unsigned long st_rdev;
    long st_size;
    long st_blksize;
    long st_blocks; /* Number 512-byte blocks allocated. */

    unsigned long st_atime_sec;
    unsigned long st_atime_nsec;
    unsigned long st_mtime_sec;
    unsigned long st_mtime_nsec;
    unsigned long st_ctime_sec;
    unsigned long st_ctime_nsec;
    long __unused[3];
};
#else
struct kstat
{
    unsigned long st_dev;  /* Device.  */
    unsigned long st_ino;  /* File serial number.  */
    unsigned int st_mode;  /* File mode.  */
    unsigned int st_nlink; /* Link count.  */
    unsigned int st_uid;   /* User ID of the file's owner.  */
    unsigned int st_gid;   /* Group ID of the file's group. */
    unsigned long st_rdev; /* Device number, if device.  */
    unsigned long __pad1;
    long st_size;   /* Size of file, in bytes.  */
    int st_blksize; /* Optimal block size for I/O.  */
    int __pad2;
    long st_blocks;    /* Number 512-byte blocks allocated. */
    long st_atime_sec; /* Time of last access.  */
    unsigned long st_atime_nsec;
    long st_mtime_sec; /* Time of last modification.  */
    unsigned long st_mtime_nsec;
    long st_ctime_sec; /* Time of last status change.  */
    unsigned long st_ctime_nsec;
    unsigned int __unused4;
    unsigned int __unused5;
};

#endif

struct statx
{
    uint32 stx_mask;
    uint32 stx_blksize;
    uint64 stx_attributes;
    uint32 stx_nlink;
    uint32 stx_uid;
    uint32 stx_gid;
    uint16 stx_mode;
    uint16 pad1;
    uint64 stx_ino;
    uint64 stx_size;
    uint64 stx_blocks;
    uint64 stx_attributes_mask;
    struct
    {
        int64 tv_sec;
        uint32 tv_nsec;
        int32 pad;
    } stx_atime, stx_btime, stx_ctime, stx_mtime;
    uint32 stx_rdev_major;
    uint32 stx_rdev_minor;
    uint32 stx_dev_major;
    uint32 stx_dev_minor;
    uint64 spare[14];
};

struct linux_dirent64
{
    uint64 d_ino;
    int64 d_off;
    unsigned short d_reclen;
    unsigned char d_type;
    char d_name[];
};

// for mmap
#define PROT_NONE 0
#define PROT_READ 1
#define PROT_WRITE 2
#define PROT_EXEC 4
#define PROT_GROWSDOWN 0X01000000
#define PROT_GROWSUP 0X02000000

#define MAP_FILE 0
#define MAP_SHARED 0x01
#define MAP_PRIVATE 0X02
#define MAP_FAILED ((void *)-1)

#endif // __STDDEF_H__
