#!/bin/bash 
i=0
FLOOR=1
gener=0   # инициализация
while [ $gener -le $FLOOR ]
do
gener=$RANDOM
done 
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