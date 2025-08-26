#!/bin/bash

echo "Launching SkarOS..."

#qemu-system-x86_64 \
#  -cdrom debian-13.0.0-amd64-netinst.iso \
#  -hda debian.qcow2 \
#  -boot d \
#  -m 2048 \
#  -enable-kvm

qemu-system-x86_64 \
    -m 2048 \
    -cpu host \
    -drive file=./debian.qcow2 \
    -enable-kvm \

#qemu-system-x86_64 \
#    -m 2048 \
#    -cpu host \
#    -drive file=./debian.qcow2 \
#    -enable-kvm \
#    -nographic \
#    -chardev socket,path=/tmp/qga.sock,server=on,wait=off,id=qga0 \
#    -device virtio-serial \
#    -device virtserialport,chardev=qga0,name=org.qemu.guest_agent.0