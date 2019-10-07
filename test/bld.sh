#!/bin/bash
#usage:
function usage()
{
    echo "Usage:"
    echo "bld.sh <docker image> <profile>"
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
    -w /home/conan/project conanio/${docker_img} \
    /bin/bash -c \
    "bld_in_docker.sh ${profile}"
