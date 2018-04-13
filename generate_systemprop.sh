#!/bin/bash

# Define constants
file="system.prop"
PRODUCT_VERSION="6.0.0"
DATE="$(date +%Y%m%d)"
RR_VERSION="RR-O-v$PRODUCT_VERSION-$DATE-$RR_BUILD-$RR_BUILDTYPE"

# Delete if existing system.prop before creating one
if [ -f "$file" ]
then
	rm $file
else
	touch $file
fi

# Populate system.prop with required RR properties
echo "ro.rr.version=$RR_VERSION" >> system.prop
echo "ro.rr.releasetype=$RR_BUILDTYPE" >> system.prop
echo "ro.rr.build.version=$PRODUCT_VERSION_MAJOR.$PRODUCT_VERSION_MINOR" >> system.prop
echo "ro.modversion=$RR_VERSION" >> system.prop
echo "rr.build.type=$RR_BUILDTYPE" >> system.prop
echo "rr.ota.version=$DATE" >> system.prop
echo "ro.rr.tag=$(grep "refs/tags" ../../../.repo/manifest.xml  | cut -d'"' -f2 | cut -d'/' -f3)" >> system.prop
echo "ro.rr.display.version=$RR_VERSION" >> system.prop
