#!/bin/bash

set -e

echo "Starting building and installing..."

mkdir -p build
cd build

cmake -G Ninja \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCURL_USE_OPENSSL=ON \
    -DCURL_ZLIB=ON \
    -DBUILD_SHARED_LIBS=ON \
    -DBUILD_STATIC_LIBS=OFF \
    -DBUILD_TESTING=OFF \
    -DENABLE_MANUAL=OFF \
    -DENABLE_CURL_SSL=ON \
    ..

ninja install
