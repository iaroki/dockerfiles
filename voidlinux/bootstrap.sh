#!/bin/bash

IMAGE="voidlinux"
mkdir ${IMAGE}
xbps-install -y -r ${PWD}/${IMAGE} --repository=http://repo.voidlinux.eu/current -S base-voidstrap
tar -pC ${IMAGE} -c . | docker import - iaroki/${IMAGE}
rm -rf ${IMAGE}

