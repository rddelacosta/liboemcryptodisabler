#!/usr/bin/env bash

set -euo pipefail

build_mode="${1:-release}"

cd "$(dirname "$0")"

ANDROID_NDK_HOME=./android-ndk-r23b
export PATH=${PATH}:${ANDROID_NDK_HOME}/toolchains/llvm/prebuilt/linux-x86_64/bin

rm -rf out
mkdir -p out
cp -af magisk-module out
cp -af README.md out/magisk-module

zip -r9 out/magisk-module-release.zip out/magisk-module
