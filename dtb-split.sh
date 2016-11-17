#!/bin/sh
# AIK-Linux/cleanup: reset working directory
# osm0sis @ xda-developers
cp -f csplitb.py ./dtb/csplitb.py
cd dtb
chmod 777 csplitb.py
./csplitb.py --prefix msm8996- --suffix .dtb --number 4 D00DFEED ../split_img/*.img-zImage
echo "DTBs Extracted created successfully";
rm csplitb.py
exit 0;
