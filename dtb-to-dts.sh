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
       
       t2=`grep 'model = "Q' ./dts/$name.dts | sed 's/.\{2\}$//' | sed -r 's/^.{38}//' | sed -e 's/\s+//g'| sed -e 's/\s/-/g'`
       
       
        echo Chipset Model "$t2"  ;
        
        ttt4=`grep 'qcom,board-id =' ./dts/$name.dts  | sed 's/.\{6\}$//' | sed -r 's/^.{18}//'`
       
        echo Board Id: "$ttt4" ;
        

        mv ./dts/$name.dts ./dts/"$t2"-"$ttt4".dts
done
