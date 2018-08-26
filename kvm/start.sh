#!/bin/bash

set -e
set -o pipefail

# add the correct user perms
gpasswd -a root libvirt
gpasswd -a root kvm
chown root:kvm /dev/kvm

# create the bridge for networking
ip link add name virt0 type bridge
ip link set dev virt0 up
bridge link
ip addr add dev virt0 10.10.10.1/24
iptables -t nat -A POSTROUTING -s 10.10.10.1/24 -j MASQUERADE

# start the virtlogd daemon
exec virtlogd --daemon &

exec $@
