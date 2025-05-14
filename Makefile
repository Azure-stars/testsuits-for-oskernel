DOCKER ?= alicesama/os-contest-image:v0.2
ARCH ?= riscv64

MUSL_PREFIX ?= $(ARCH)-linux-musl
MUSL_LIB_PATH ?= /opt/$(MUSL_PREFIX)/$(MUSL_PREFIX)/lib/libc.so

GLIBC_PREFIX ?= $(ARCH)-linux-gnu

ifeq ($(ARCH), x86_64)
GLIBC_SO_PATH ?= /lib/x86_64-linux-gnu/libc.so.6
LIBCM_SO_PATH ?= /lib/x86_64-linux-gnu/libm.so.6
GLIBC_LINUX_SO_PATH ?= /lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
else ifeq ($(ARCH), loongarch64)
GLIBC_SO_PATH ?= /usr/loongarch64-linux-gnu/lib/libc.so.6
LIBCM_SO_PATH ?= /usr/loongarch64-linux-gnu/sysroot/usr/lib64/libm.so.6
GLIBC_LINUX_SO_PATH ?= /usr/loongarch64-linux-gnu/sysroot/usr/lib64/ld-linux-loongarch-lp64d.so.1
else ifeq ($(ARCH), aarch64)
GLIBC_SO_PATH ?= /usr/aarch64-linux-gnu/lib/libc.so.6
LIBCM_SO_PATH ?= /usr/aarch64-linux-gnu/lib/libm.so.6
GLIBC_LINUX_SO_PATH ?= /usr/aarch64-linux-gnu/lib/ld-linux-aarch64.so.1
else ifeq ($(ARCH), riscv64)
GLIBC_SO_PATH ?= /usr/riscv64-linux-gnu/lib/libc.so.6
LIBCM_SO_PATH ?= /usr/riscv64-linux-gnu/lib/libm.so.6
GLIBC_LINUX_SO_PATH ?= /usr/riscv64-linux-gnu/lib/ld-linux-riscv64-lp64d.so.1
else
error "Unsupported architecture: ${ARCH}"
endif

all: build-all sdcard-with-ltp

build-all: build-musl build-glibc

build-musl:
	make -f Makefile.sub clean
	mkdir -p sdcard/${ARCH}/musl
	make -f Makefile.sub ARCH=${ARCH} PREFIX=${MUSL_PREFIX}- DESTDIR=$(shell pwd)/sdcard/${ARCH}/musl
	mkdir -p sdcard/${ARCH}/musl/lib
	cp ${MUSL_LIB_PATH} sdcard/${ARCH}/musl/lib
	sed -E -i 's/#### OS COMP TEST GROUP ([^ ]+) ([^ ]+) ####/#### OS COMP TEST GROUP \1 \2-musl ####/g' sdcard/${ARCH}/musl/*_testcode.sh

build-glibc:
	make -f Makefile.sub clean
	mkdir -p sdcard/${ARCH}/glibc
	make -f Makefile.sub ARCH=${ARCH} PREFIX=${GLIBC_PREFIX}- DESTDIR=$(shell pwd)/sdcard/${ARCH}/glibc
	mkdir -p sdcard/${ARCH}/glibc/lib
	cp ${GLIBC_SO_PATH} sdcard/${ARCH}/glibc/lib
	cp ${GLIBC_LINUX_SO_PATH} sdcard/${ARCH}/glibc/lib
	cp ${LIBCM_SO_PATH} sdcard/${ARCH}/glibc/lib
	sed -E -i 's/#### OS COMP TEST GROUP ([^ ]+) ([^ ]+) ####/#### OS COMP TEST GROUP \1 \2-glibc ####/g' sdcard/${ARCH}/glibc/*_testcode.sh

sdcard:
	dd if=/dev/zero of=sdcard-${ARCH}.img count=128 bs=1M
	mkfs.ext4 sdcard-${ARCH}.img
	mkdir -p mnt
	mount sdcard-${ARCH}.img mnt
	rsync -aL --exclude 'ltp*/' sdcard/${ARCH}/ mnt/
	umount mnt
	gzip sdcard-${ARCH}.img

sdcard-with-ltp:
	dd if=/dev/zero of=sdcard-${ARCH}.img count=4096 bs=1M
	mkfs.ext4 sdcard-${ARCH}.img
	mkdir -p mnt
	mount sdcard-${ARCH}.img mnt
	cp -rL sdcard/${ARCH}/* mnt
	umount mnt
	gzip sdcard-${ARCH}.img

clean:
	make -f Makefile.sub ARCH=${ARCH} clean
	rm -rf sdcard/${ARCH}/*
	rm -rf sdcard/${ARCH}.img
	rm -rf sdcard-${ARCH}.img.gz

docker:
	docker run --rm -it -v .:/code --entrypoint bash -w /code --privileged $(DOCKER)


.PHONY: all build-all build-musl build-glibc sdcard clean docker