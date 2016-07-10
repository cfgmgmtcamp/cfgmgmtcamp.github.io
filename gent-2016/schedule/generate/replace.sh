#!/bin/bash


# Replacing  TITLE, SPEAKER, TRACK , DAY , DATE  TIMESLOT , ROOM  , ABSTRACT  and BIO   from template

IFS=$(echo -en "\n\b")

for line in `cat x` 

do 
#     echo "------------------- $line  -------------" 
    echo "---------------"


SPEAKER=`echo $line | awk -F ':' '{print $1}'`
    echo $SPEAKER
TITLE=`echo $line | awk -F ':' '{print $2}'`
echo $TITLE
ABSTRACT=`echo $line | awk -F ':' '{print $3}'`
echo $ABSTRACT
BIO=`echo $line | awk -F ':' '{print $4}'`
echo $BIO

FNAME=`echo $SPEAKER | sed -e "s/ //g"`
#echo "hello world" > $FNAME.html



cat template.html.TPL | sed -e "s/SPEAKER/$SPEAKER/g"  -e "s/TITLE/$TITLE/g" -e "s/ABSTRACT/$ABSTRACT/g" -e "s/BIO/$BIO/g" >  $FNAME.html 

done



