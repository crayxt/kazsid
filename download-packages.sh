#!/bin/bash
#################################################################################
## Using the precompiled software packages from third party			#
## repositories is a bad idea. Consider compiling these packages yourself	#
## or stick with official Debian repos only.					#
## You have been warned!							#
#################################################################################

DIRECTORY="config/packages.chroot"
PACKAGES=(	'http://dl.dropbox.com/u/5626215/live-installer_2012.01.16~kazsid0_all.deb'
		'http://dl.dropbox.com/u/5626215/deadbeef_0.5.1-1_i386.deb'
		'http://files.baurzhan.info/equinox-themes_1.30.2-3_all.deb'
		'http://files.baurzhan.info/equinox-themes-extra_1.30.2-1_all.deb'
		'http://hadret.rootnode.net/debian/pool/main/g/gtk2-engines-equinox/gtk2-engines-equinox_1.50-1_i386.deb'
		'http://ppa.launchpad.net/tiheum/equinox/ubuntu/pool/main/f/faenza-icon-theme/faenza-icon-theme_1.2_all.deb'
		'http://files.baurzhan.info/faenza-cupertino-icon-theme_0.1-1_all.deb'
		'http://files.baurzhan.info/ttf-microsoft-corefonts_1-1_all.deb'
		'http://files.baurzhan.info/inxi_1.4.23-1_all.deb'
		'http://ppa.launchpad.net/ubuntu-wine/ppa/ubuntu/pool/main/w/wine1.3/wine1.3_1.3.37-0ubuntu1~ppa1~oneiric1_i386.deb'
		'http://linukz.org/debian/pool/main/s/stardict-kazrus/stardict-kazrus_20100827-1_all.deb'
		'http://archive.canonical.com/ubuntu/pool/partner/a/adobe-flashplugin/adobe-flash-properties-gtk_11.1.102.55-0oneiric1_i386.deb'
		'http://archive.canonical.com/ubuntu/pool/partner/a/adobe-flashplugin/adobe-flashplugin_11.1.102.55-0oneiric1_i386.deb'
	)

mkdir $DIRECTORY
cd $DIRECTORY
for i in ${PACKAGES[@]}; do
	wget -c $i;
done
