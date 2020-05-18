#!/bin/bash
[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"
echo "Welcome to rogaura core rgb control"

echo "enter the desired input from the menu"
echo "1- red"
echo "2- green"
echo "3-cyan"
echo "4-magenta"
echo "5-white"
echo "6-no light"
echo "7-colorcycle"
echo "8-brightness"
echo -n "ENTER value: "
read n
if [[ $n == 1 ]]
 then
rogauracore red
elif [[ $n == 2 ]]
 then
rogauracore green
elif [[ $n == 3 ]]
 then
rogauracore cyan
elif [[ $n == 4 ]]
 then
rogauracore magenta
elif [[ $n == 5 ]]
 then
rogauracore white
elif [[ $n == 6 ]]
 then
rogauracore black
elif [[ $n == 7 ]]
 then
    echo "enter the speed from the menu"
    echo "1- slowest"
    echo "2-fast"
    echo "3-fastest"
    echo -a "Enter: "
    read a
    if [[ $a == 1 ]]
     then
    rogauracore single_colorcycle 1
     elif [[ $a == 2 ]]
      then
    rogauracore single_colorcycle 2
     elif [[ $a == 3 ]]
      then
    rogauracore single_colorcycle 3
    fi
elif [[ $n == 8 ]]
 then
 echo -n "enter ur choice 1-for low ,2-for medium,3-for high: "
 read c
 rogauracore brightness $c
fi
