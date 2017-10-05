#!/bin/bash
dir=$1
k=$2
re='^[0-9]+$'
if ! [[ $k =~ $re ]] ; then
   echo "Filesize input is INVALID"
   echo "CODE: NOT A NUMBER"
   exit 
fi
if [ ! -d "$dir" ]; then
    echo "Directory input is INVALID"
    echo "CODE: 2048"
else
for f in `ls $dir`; do
if [ -f $f ]; then
  if [ `du -b $f|cut -f1` -gt $k ]; then
    echo "$f"
    fi
  fi  
done
fi