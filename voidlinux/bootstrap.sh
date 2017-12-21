#!/bin/bash

IMAGE="voidlinux"
sudo mkdir ${IMAGE}
sudo xbps-install -y -r ${PWD}/${IMAGE} --repository=http://repo.voidlinux.eu/current -S base-voidstrap
sudo rm -rf ${PWD}/${IMAGE}/usr/share/doc ${PWD}/${IMAGE}/usr/share/man ${PWD}/${IMAGE}/var/cache/xbps
sudo tar -pC ${IMAGE} -c . | docker import - iaroki/${IMAGE}
sudo rm -rf ${IMAGE}

