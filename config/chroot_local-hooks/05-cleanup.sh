#!/bin/sh

set -e

# Removing unused files
find . -name *~ -print0 | xargs -0 rm -f

rm -rf /var/cache/man/*

# Truncating logs
for FILE in $(find /var/log/ -type f)
do
	: > ${FILE}
done

# Reset apt proxy
echo > /etc/apt/apt.conf.d/7proxy
dpkg-reconfigure gdm3
