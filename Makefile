DOCKER ?= docker.educg.net/cg/os-contenst:20250119

all: sdcard

build-all: build-rv build-la

build-rv:
	make -f Makefile.rv clean
	make -f Makefile.rv

build-la:
	make -f Makefile.la clean
	make -f Makefile.la

sdcard: build-all .PHONY
	dd if=/dev/zero of=sdcard-rv.img count=128 bs=1M
	mkfs.vfat sdcard-rv.img
	mkdir -p mnt
	mount sdcard-rv.img mnt
	cp -rL sdcard/riscv/* mnt
	umount mnt
	gzip sdcard-rv.img

	dd if=/dev/zero of=sdcard-la.img count=128 bs=1M
	mkfs.vfat sdcard-la.img
	mkdir -p mnt
	mount sdcard-la.img mnt
	cp -rL sdcard/riscv/* mnt
	umount mnt
	gzip sdcard-la.img


clean:
	make -f Makefile.rv clean
	rm -rf sdcard/riscv/*
	make -f Makefile.la clean
	rm -rf sdcard/loongarch/*
	rm -f sdcard-la.img.gz
	rm -f sdcard-rv.img.gz

docker:
	docker run --rm -it -v .:/code --entrypoint bash -w /code --privileged $(DOCKER)


.PHONY: