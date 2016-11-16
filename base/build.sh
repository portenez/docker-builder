#!/usr/bin/env bash

MY_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TAG='portenez/docker-builder:base'
CMD="docker build -t ${TAG} ${MY_DIR}"
echo ${CMD}
${CMD}
