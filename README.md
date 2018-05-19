# Mi5_AIK_Ramdisk
Mi5 Ramdisk decompiled using Android Kitchen 
This is based on the MIUI8 Global ROM 8.0.5.0

My motive behind this ramdisk is to have ramdisk fixes till fully working kernel is available.


How to use this
1. Check Android Kitchen help first
2. I have modified the repack script to add build date
3. I have added default.prop bump to add build timestamp

Added other features

Steps.
1. Copy boot.img to the folder.
2. run unpackimg.sh to unpack the image
3. run dtb-split.sh to split dtbs from zImage
4. run dtb-to-dts.sh to convert dtbs to dts files
