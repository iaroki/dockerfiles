#!/bin/bash

IMAGE="voidlinux"
echo "==> Creating void directory..."
sudo mkdir -v ${IMAGE}
echo "==> Bootstrapping base system..."
sudo xbps-install -y -r ${PWD}/${IMAGE} --repository=http://repo.voidlinux.eu/current -S base-voidstrap
echo "==> Cleaning cache..."
sudo rm -rf ${PWD}/${IMAGE}/usr/share/doc ${PWD}/${IMAGE}/usr/share/man ${PWD}/${IMAGE}/var/cache/xbps
echo "==> Compressing and importing image..."
sudo tar -pC ${IMAGE} -c . | docker import - iaroki/${IMAGE}
echo "==> Removing temporary files..."
sudo rm -rf ${IMAGE}
echo "DONE!"

