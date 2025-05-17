#!/bin/bash
 NUMBER1=$1
 NUMBER2=$2
    SUM=$((NUMBER1 + NUMBER2))
 if [ $SUM -eq 0 ]
then
echo "sum is 0"
else
echo "sum is $SUM and greater than 0"
fi