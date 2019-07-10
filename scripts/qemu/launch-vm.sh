#!/bin/sh

qemu-system-x86_64 \
    -m 2G \
    -smp 2 \
    -cpu host \
    -enable-kvm \
    -usb \
    -device usb-tablet \
    -machine type=pc,accel=kvm \
    -vga qxl \
    -display gtk \
    -drive file="$1",if=ide
