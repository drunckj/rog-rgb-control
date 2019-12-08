
echo "Welcome to rogaura core rgb control"

echo "enter the desired input from the menu"
echo "1- red"
echo "2- green"
echo "3-cyan"
echo "4-magenta"
echo "5-white"
echo "6-no light"
echo "7-colorcycle"
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

fi
