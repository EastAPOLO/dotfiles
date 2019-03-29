#!/bin/sh

qemu-system-x86_64 \
    -m 2G \
    -smp 2 \
    -cpu host \
    -enable-kvm \
    -usb \
    -device usb-tablet \
    -vga virtio \
    -display gtk \
    -boot d \
    -cdrom "$1" \
    -drive file="$2",if=virtio
