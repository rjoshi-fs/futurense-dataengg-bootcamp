#!/bin/sh

echo "enter city 1"
read c1
echo "enter city 2"
read c2
echo "enter city 3"
read c3

echo $c1 >> cities.txt
echo $c2 >> cities.txt
echo $c3 >> cities.txt

cat cities.txt

sed -i 's/New/Old/gi' cities.txt

echo "Filtered cities are "
cat cities.txt | grep 'Old' > new-cities.txt

cat new-cities.txt
