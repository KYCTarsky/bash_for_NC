#!/bin/bash 
i=0
gener=$RANDOM
RANGE=100
let "gener %= $RANGE"
while [ $i -le 2 ]
do
i=$(( $i + 1 ))
echo Enter number:
read num 
if [ $num -eq $gener ]
then
echo Yes!
break
else
echo No!
fi
done
echo Game over. $gener