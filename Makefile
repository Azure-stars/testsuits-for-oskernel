DOCKER ?= docker.educg.net/cg/os-contenst:20250119

all: build-all

build-all: build-rv build-la

build-rv:
	make -f Makefile.rv clean
	make -f Makefile.rv

build-la:
	make -f Makefile.la clean
	make -f Makefile.la

clean:
	make -f Makefile.rv clean
	rm -rf sdcard/riscv/*
	make -f Makefile.la clean
	rm -rf sdcard/loongarch/*

docker:
	docker run --rm -it -v .:/code --entrypoint bash $(DOCKER)