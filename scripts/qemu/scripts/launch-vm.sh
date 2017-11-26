#!/bin/bash

qemu-system-x86_64 \
    -m 2G \
    -smp 2 \
    -cpu host \
    -enable-kvm \
    -spice port=5930,disable-ticketing \
    -vga qxl \
    -device virtio-serial-pci  -device virtserialport,chardev=spicechannel0,name=com.redhat.spice.0 -chardev spicevmc,id=spicechannel0,name=vdagent \
	-cdrom "$1"
    -hda "$2"
