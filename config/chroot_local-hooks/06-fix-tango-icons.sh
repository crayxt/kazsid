#!/bin/sh
# When using Tango icons, Thunar shows the standard user folders
# like Music, Videos, Share with gnome default icons,
# this looks ugly. Let's fix it by providing
# requred dirs icons in Tango icon theme folder.
# All of them will be like the standard folder icon.
# Sorry, I can't draw the required icons.

set -e
echo "I: Fixing the Tango icon theme"

TANGO_ICON_DIR=/usr/share/icons/Tango/scalable/places
mkdir -p $TANGO_ICON_DIR

cd $TANGO_ICON_DIR
for i in documents videos music publicshare templates pictures download
do
	ln -s folder.svg folder-$i.svg
done

