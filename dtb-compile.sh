#!/bin/sh
# AIK-Linux/cleanup: reset working directory
# osm0sis @ xda-developers

for i in `find ./split_img -type f -name *.img-zImage`; do
        
        t=`basename $i` 
        echo Found Kernel Image "$t";
        
        name=`echo $t | sed -e 's/\.[^.]*$//'`
        echo Name of Kernel Image "$name";

      
       ./dtbToolCM -2  -v -s 2048 -o split_img/$name.img-dtb dtb/
done


echo "DTB Image created successfully";
exit 0;

