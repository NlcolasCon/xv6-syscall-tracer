#!/usr/bin/env bash
set -e

# 1. Copy dif/ files into xv6 tree
rsync -av --relative dif/ xv6/

# 2. Build xv6 with your tracer
pushd xv6
make clean
make
popd

# 3. Launch xv6 in QEMU
pushd xv6
make qemu
popd
