#!/bin/bash

# $ git clone https://github.com/conan-community/conan-openssl
# $ cd conan-openssl
# $ 
# docker run -it --rm -v$(pwd):/home/conan/project -w /home/conan/project conanio/gcc9-armv8 /bin/bash
# docker run -it --rm -v$(pwd):/home/conan/project -w /home/conan/project conanio/gcc9-armv7 /bin/bash
# docker run -it --rm -v$(pwd):/home/conan/project -w /home/conan/project conanio/android-clang8-armv8 /bin/bash
# docker run -it --rm -v$(pwd):/home/conan/project -w /home/conan/project conanio/android-clang8-armv7 /bin/bash

# docker run -it --rm -v$(pwd):/home/conan/project -v ~/.conan/conan.conf:/home/conan/.conan/conan.conf -w /home/conan/project conanio/gcc9-armv8 /bin/bash

# # Now we are running on the conangcc49-armv7hf container
# $ sudo pip install conan --upgrade
# $ cd project

# $ conan create . user/channel --build missing
# $ conan remote add myremoteARMV7 http://some.remote.url
# $ conan upload "*" -r myremoteARMV7 --all
# export ALL_PROXY=http://172.29.96.1:1080
# export HTTP_PROXY=$ALL_PROXY
# sed -i 's/172.29.96.1/aaaa/g' ./conan.conf
# sed -i "s/aaaa/${windows_host}/g" ./conan.conf
# export http_proxy=$ALL_PROXY

# export HTTPS_PROXY=$ALL_PROXY

# export https_proxy=$ALL_PROXY

    # 2  unset ALL_PROXY
    # 3  unset HTTP_PROXY
    # 4  unset HTTPS_PROXY
    # 5  unset http_proxy
    # 6  unset https_proxy

# conan remote add -i 0 -f  my http://172.29.96.1:8081/artifactory/api/conan/conan False
set -e
set -x

rm -rf build
mkdir build
pushd build
# docker run -it -v$(pwd):/home/conan/project --rm conanio/gcc49-armv7hf /bin/bash

conan install .. -pr ../profiles/linux_armv7a
# cmake .. -DCMAKE_BUILD_TYPE=Release
# cmake --build .

# bin/md5

# sed -i 's/maxmemory.*/maxmemory 26gb/' /some/file/some/where.txt