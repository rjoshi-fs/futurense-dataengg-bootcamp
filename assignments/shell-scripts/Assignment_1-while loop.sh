#!/bin/bash

echo "Enter number of city you want :-"
read num
i=1
while [ $i -le $num ];
do
        echo "Enter city name : "
        read city1
        if [[ $city1 =~ [0-9] ]];then
                echo "City name contains number,enter again "
        else
                echo $city1 >> cities_s.txt
                let i++
        fi
done

cat cities_s.txt

sed -i 's/New/Old/gi' cities_s.txt

cat cities_s.txt | grep "Old" > old-cities.txt

cat old-cities.txt