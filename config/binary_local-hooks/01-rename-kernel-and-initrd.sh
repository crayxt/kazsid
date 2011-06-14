#!/bin/sh

# This is a hook for live-build(7) to install live-build and its config into
# the binary image.
# To enable it, copy or symlink this hook into your config/chroot_local-hooks
# directory.

DIRECTORY="binary/live"

cd $DIRECTORY
#mv vmlinuz-2.6.39*686-pae vmlinuz || exit 1
mv vmlinuz-2.6.38* vmlinuz || exit 1
echo "vmlinuz renamed"
#mv initrd.img-2.6.39*686-pae initrd.img || exit 1
mv initrd.img-2.6.38* initrd.img || exit 1
echo "initrd renamed"
