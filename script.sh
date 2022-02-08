#!/bin/bash

#script.sh - скрипт, представляющий из себя игру по 
#угадыванию сгенерированного числа. У пользователя есть 3
#попытки, что-бы угадать число, иначе проигрыш.

i=0       # иницианилизация переменной для цикла
gener=0   # иницианилизация переменной для случайного числа 
FLOOR=1   # нижнее пороговое значение для случайного числа
RANGE=100 # верхнее пороговое значение для случайного числа
while [ $gener -le $FLOOR ] # цикл генерации случайного числа > чем FLOOR
    do
    gener=$RANDOM    
    done 
let "gener %= $RANGE"    # ограничение вернего порога генерируемого значения
while [ $i -le 2 ]       # цикл угадывания сгенерированного значения
    do
    i=$(( $i + 1 ))
    echo Enter number:
    read num 
    if [ $num -gt $gener ]
        then
        echo The number is greater than the mystery number
    elif [ $num -lt $gener ]
        then
        echo The number is less than the mystery number
    else #загаданное число равно введённому
        echo Yes! 
    fi
    done
echo Game over. $gener