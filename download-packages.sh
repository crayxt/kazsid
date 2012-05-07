#!/bin/bash
#################################################################################
## Using the precompiled software packages from third party			#
## repositories is a bad idea. Consider compiling these packages yourself	#
## or stick with official Debian repos only.					#
## You have been warned!							#
#################################################################################

DIRECTORY="config/packages.chroot"
PACKAGES=(	'http://dl.dropbox.com/u/5626215/live-installer_2012.02.21~kazsid0_all.deb'
		'http://dl.dropbox.com/u/5626215/deadbeef_0.5.2-1_i386.deb'
		'http://ppa.launchpad.net/tiheum/equinox/ubuntu/pool/main/f/faenza-icon-theme/faenza-icon-theme_1.2_all.deb'
		'http://ppa.launchpad.net/webupd8team/themes/ubuntu/pool/main/f/faenza-colors/faenza-cupertino_0.3.4-1~webupd8~oneiric_all.deb'
		'http://files.baurzhan.info/ttf-microsoft-corefonts_1-1_all.deb'
		'http://files.baurzhan.info/inxi_1.7.28-1_all.deb'
		'http://ppa.launchpad.net/ubuntu-wine/ppa/ubuntu/pool/main/w/wine1.4/wine1.4_1.4-0ubuntu1~ppa2~oneiric3_i386.deb'
		'http://linukz.org/debian/pool/main/s/stardict-kazrus/stardict-kazrus_20100827-1_all.deb'
		'http://archive.canonical.com/ubuntu/pool/partner/a/adobe-flashplugin/adobe-flash-properties-gtk_11.2.202.235-0precise1_i386.deb'
		'http://archive.canonical.com/ubuntu/pool/partner/a/adobe-flashplugin/adobe-flashplugin_11.2.202.235-0precise1_i386.deb'
	)

mkdir $DIRECTORY
cd $DIRECTORY
for i in ${PACKAGES[@]}; do
	wget -c $i;
done
