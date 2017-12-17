#!/bin/bash

IMAGE="voidlinux"
sudo mkdir ${IMAGE}
sudo xbps-install -y -r ${PWD}/${IMAGE} --repository=http://repo.voidlinux.eu/current -S base-voidstrap
sudo tar -pC ${IMAGE} -c . | docker import - iaroki/${IMAGE}
sudo rm -rf ${IMAGE}

