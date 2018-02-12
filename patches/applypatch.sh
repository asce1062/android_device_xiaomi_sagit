#!/bin/sh
#
# applypatch.sh
# apply patches
#

dir=`cd $(dirname $0) && pwd`
top=$dir/../../../..

if [ -n "$(find $dir -name \*.patch -type f)" ]; then
    echo ""
    echo "*** Patching ***"
    for patch in `ls $dir/*.patch` ; do
        echo ""
        echo "==> patch file: ${patch##*/}"
        patch -p1 -N -i $patch -r - -d $top
    done

    echo "*** Patching Done ***"
    echo ""
    find . -name "*.orig" -delete
else
    echo ""
    echo "*** No patches ***"
    echo ""
fi
