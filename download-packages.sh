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
		'http://hadret.rootnode.net/debian/pool/main/g/gtk2-engines-equinox/gtk2-engines-equinox_1.50-1_i386.deb'
		'http://hadret.rootnode.net/debian/pool/main/f/faenza-icon-theme/faenza-icon-theme_1.0.0-0.1_all.deb'
		'http://files.baurzhan.info/faenza-cupertino-icon-theme_0.1-1_all.deb'
		'http://mirrors.fe.up.pt/pub/debian-unofficial/pool/non-free/m/microsoft-corefonts/ttf-microsoft-corefonts_1-1_all.deb'
		'http://frickelplatz.de/debian/dists/unstable/main/binary-i386/otherosfs/wine_1.3.28-0.frickel.1_i386.deb'
		'http://linukz.org/debian/pool/main/s/stardict-kazrus/stardict-kazrus_20100827-1_all.deb'
	)

mkdir $DIRECTORY
cd $DIRECTORY
for i in ${PACKAGES[@]}; do
	wget -c $i;
done
