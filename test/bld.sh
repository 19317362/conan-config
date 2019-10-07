#!/bin/bash
#usage:
function usage()
{
    echo "Usage:"
    echo "./bld.sh <docker image> <profile>"
    echo "eg."
    echo "./bld.sh conanio/gcc9-armv7 linux_armv7"
    echo "./bld.sh conanio/gcc9-armv8 linux_armv8"
}
# if [ $# -eq 0 ]
if [ $# -ne 2 ]
  then
    usage
    exit 1
fi

docker_img="${1}"
profile="${2}"

docker run --rm \
    -v$(pwd):/home/conan/project \
    -v ~/.conan:/home/conan/.conan \
    -w /home/conan/project ${docker_img} \
    /bin/bash -c \
    "./exec_in_docker.sh ${profile}"
