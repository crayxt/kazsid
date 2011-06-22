#!/bin/bash
### this hack is used to create standard folders in /etc/skel
### directory.
set -e
echo "I: Making /etc/skel directories"


cd /etc/skel
for i in Desktop  Documents  Downloads  Music  Share  Video; do
	mkdir $i;
done
