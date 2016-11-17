#!/bin/bash

for i in `find . -type f \( -iname \*.rej \
                                -o -iname \*.dtb \)`; do
        
        t=`basename $i` 
        echo Found DTB "$t";
        
        name=`echo $t | sed -e 's/\.[^.]*$//'`
       # echo Found DTB2 "$name";

        #d=`dirname $i` 
        #echo Base Dir "$d";
        
       ./dtc -I dtb -O dts -o ./dts/$name.dts $i     
done
