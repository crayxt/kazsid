#!/bin/bash
#################################################################################
## Using the precompiled software packages from third party			#
## repositories is a bad idea. Consider compiling these packages yourself	#
## or stick with official Debian repos only.					#
## You have been warned!							#
#################################################################################

DIRECTORY="config/packages.chroot"
PACKAGES=(	'http://dl.dropbox.com/u/5626215/live-installer_2012.11.26~kazsid0_all.deb'
		'https://dl.dropboxusercontent.com/u/5626215/deadbeef_0.6.0-kazsid0_i386.deb'
		'http://ppa.launchpad.net/tiheum/equinox/ubuntu/pool/main/f/faenza-icon-theme/faenza-icon-theme_1.3.1_all.deb'
		'http://ppa.launchpad.net/webupd8team/themes/ubuntu/pool/main/f/faenza-colors/faenza-cupertino_0.3.4-1~webupd8~oneiric_all.deb'
		'https://www.dropbox.com/s/xd53tet3lzj9l47/ttf-microsoft-corefonts_1-1_all.deb'
		'https://dl.dropboxusercontent.com/u/5626215/stardict-kazrus_20100827-1_all.deb'
	)

mkdir $DIRECTORY
cd $DIRECTORY
for i in ${PACKAGES[@]}; do
	wget -c $i;
done
