
#! /bin/bash

unset ALL_PROXY
unset HTTP_PROXY
unset HTTPS_PROXY
unset http_proxy
unset https_proxy
# conan remote add -i 0 -f  my http://172.29.96.1:8081/artifactory/api/conan/conan False

# conan profile update settings.compiler.libcxx=libstdc++11 default
triplet="$1"
conan profile update settings.compiler.libcxx=libstdc++11 ${triplet}
set -e
set -x

rm -rf build/${triplet}
mkdir -p build/${triplet}
pushd build/${triplet}
pwd
# prepare
# conan install .. --build missing

time conan install ../../ -pr ${triplet} --build missing

# generate cmake
time cmake ../.. -DCMAKE_BUILD_TYPE=Release

# build
time cmake --build .

# file info
file bin/*
