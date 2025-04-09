DOCKER ?= alicesama/os-contest-image:v0.1
ARCH ?= riscv64

MUSL_PREFIX ?= $(ARCH)-linux-musl
MUSL_LIB_PATH ?= /opt/$(MUSL_PREFIX)/$(MUSL_PREFIX)/lib/libc.so

GLIBC_PREFIX ?= $(ARCH)-linux-gnu

ifeq ($(ARCH), x86_64)
GLIBC_SO_PATH ?= /lib/x86_64-linux-gnu/libc.so.6
else
GLIBC_SO_PATH ?= /usr/$(GLIBC_PREFIX)/lib/libc.so.6
endif

all: sdcard

build-all: build-musl build-glibc

build-musl:
	make -f Makefile.sub clean
	mkdir -p sdcard/${ARCH}/musl
	make -f Makefile.sub ARCH=${ARCH} PREFIX=${MUSL_PREFIX}- DESTDIR=sdcard/${ARCH}/musl
	cp ${MUSL_LIB_PATH} sdcard/${ARCH}/musl/lib
	sed -E -i 's/#### OS COMP TEST GROUP ([^ ]+) ([^ ]+) ####/#### OS COMP TEST GROUP \1 \2-musl ####/g' sdcard/${ARCH}/musl/*_testcode.sh

build-glibc:
	make -f Makefile.sub clean
	mkdir -p sdcard/${ARCH}/glibc
	make -f Makefile.sub ARCH=${ARCH} PREFIX=${GLIBC_PREFIX}- DESTDIR=sdcard/${ARCH}/glibc
	cp ${GLIBC_SO_PATH} sdcard/${ARCH}/glibc/lib
	sed -E -i 's/#### OS COMP TEST GROUP ([^ ]+) ([^ ]+) ####/#### OS COMP TEST GROUP \1 \2-glibc ####/g' sdcard/${ARCH}/glibc/*_testcode.sh

sdcard: build-all .PHONY
	dd if=/dev/zero of=sdcard-${ARCH}.img count=128 bs=1M
	mkfs.ext4 sdcard-${ARCH}.img
	mkdir -p mnt
	mount sdcard-${ARCH}.img mnt
	cp -rL sdcard/${ARCH}/* mnt
	umount mnt
	gzip sdcard-${ARCH}.img

clean:
	make -f Makefile.sub ARCH=${ARCH} clean
	rm -rf sdcard/${ARCH}/*
	rm -rf sdcard-${ARCH}.img.gz

docker:
	docker run --rm -it -v .:/code --entrypoint bash -w /code --privileged $(DOCKER)


.PHONY: