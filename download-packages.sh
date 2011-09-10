#!/bin/bash
#################################################################################
## using the precompiled software packages from third				#
## party repositories is a bad idea. Consider compiling these packages yourself	#
## or stick with official Debian repos only.					#
## You have been warned!							#
#################################################################################

DIRECTORY="config/chroot_local-packages"
PACKAGES=(	'http://mirror-kt.neolabs.kz/linuxmint/packages/pool/import/i/inxi/inxi_1.4.23-1_all.deb'
		'http://mirror-kt.neolabs.kz/debian/pool/main/p/pm-utils/pm-utils_1.3.0-3_all.deb'
		'http://dl.dropbox.com/u/5626215/live-installer_2011.06.10%7Ekazsid0_all.deb'
		'http://dl.dropbox.com/u/5626215/deadbeef_0.5.1-1_i386.deb'
		'http://files.baurzhan.info/equinox-themes_1.30.2-3_all.deb'
		'http://files.baurzhan.info/equinox-themes-extra_1.30.2-1_all.deb'
		'http://files.baurzhan.info/gtk2-engines-equinox_1.30.2-2_i386.deb'
		'http://files.baurzhan.info/faenza-icon-theme_0.9.2-0.1_all.deb'
		'http://files.baurzhan.info/faenza-cupertino-icon-theme_0.1-1_all.deb'
		'http://archive.debian-maintainers.org/unofficial/packages/microsoft-corefonts/current_all/ttf-microsoft-corefonts_1-1_all.deb'
		'http://frickelplatz.de/debian/dists/unstable/main/binary-i386/otherosfs/wine_1.3.26-0.frickel.1_i386.deb'
		'http://linukz.org/debian/pool/main/s/stardict-kazrus/stardict-kazrus_20100827-1_all.deb'
	)

mkdir $DIRECTORY
cd $DIRECTORY
for i in ${PACKAGES[@]}; do
	wget -c $i;
done
