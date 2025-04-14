#!/usr/bin/env bash

# Generates a GIMP .gpl color palette file from a picture.
# Usage:
#	generate_gpl_palette.bash 5 test.jpg
# First argument is the number of colors.
# Second argument is the file.

colors_target="${1}"
image_target="${2}"
converted_image="$(mktemp --suffix=.png)"
trap "rm '${converted_image}'" EXIT

magick "${image_target}" "${converted_image}"

function generateColors() {
	colors -en "${colors_target}" < "${converted_image}"
}

echo 'GIMP Palette'
echo "#Palette Name: ${image_target}"
echo "#Description: Palette generated from ${image_target}."
echo "#Colors: ${colors_target}"
for color in $(generateColors); do
	printf "%d\t%d\t%d\t%s\n" 0x${color:1:2} 0x${color:3:2} 0x${color:5:2} ${color:1:6}
done;
