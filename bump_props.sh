#!/bin/sh
# 
# Chhapil @ xda-developers


sed -i -r "s/[0-9]{4}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}:[0-9]{2}/$(date '+%Y-%m-%d %H:%M:%S')/g" ramdisk/default.prop

echo "default.prop bumped successfully";
exit 0;

