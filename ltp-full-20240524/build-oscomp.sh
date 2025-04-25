#!/bin/bash

# 默认值
PREFIX=""
CROSS=""

# 显示帮助信息
function show_help() {
    echo "Usage: build_oscomp.sh [OPTIONS]"
    echo "Options:"
    echo "  --prefix [prefix]   Set the installation prefix."
    echo "  --cross [cross]     Set the cross compiler."
    echo "  --help              Show this help message."
}

# 解析命令行参数
while [[ $# -gt 0 ]]; do
    case $1 in
        --prefix)
            PREFIX="$2"
            shift 2
            ;;
        --cross)
            CROSS="$2"
            shift 2
            ;;
        --help)
            show_help
            exit 0
            ;;
        *)
            echo "Unknown option: $1"
            show_help
            exit 1
            ;;
    esac
done

# 输出参数值
echo "Prefix: $PREFIX"
echo "Cross: $CROSS"
set -ex

make clean
make autotools

CFLAGS=""

CROSS="${CROSS%-}"

# 判断 CROSS 的合法值

# 设置合法值列表
LEGAL_CROSS=("loongarch64-linux-gnu" "loongarch64-linux-musl" "riscv64-linux-gnu" "riscv64-linux-musl" "x86_64-linux-gnu" "x86_64-linux-musl" "aarch64-linux-gnu" "aarch64-linux-musl")

# 判断 CROSS 是否在 LEGAL_CROSS 中
if echo "${LEGAL_CROSS[@]}" | grep -qw "$CROSS"; then
    echo "$CROSS is a valid cross compiler."
else
    echo "$CROSS is not a valid cross compiler."
    echo "Valid options are: ${LEGAL_CROSS[@]}"
    exit 1
fi

if [[ "$CROSS" == *"riscv64-linux-musl"* ]]; then
    CFLAGS="-march=rv64gc"
fi

./configure --prefix=$PREFIX/ltp \
    --host=$CROSS \
    --build=x86_64-linux-gnu  \
    --with-target-cflags="$CFLAGS" \
    --without-tirpc

make V=1 -j  && make install DESTDIR=/