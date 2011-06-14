#!/bin/sh

echo "I: Adding vfat module to autoload, live-initramfs"
echo "modprobe -q vfat" >> /usr/share/initramfs-tools/scripts/live-premount/modules
