#!/bin/bash
echo "Prozorova Elizaveta 718"
echo "Work with images"

while true; do
echo -e "\nEnter action:"
echo "1. Change format"
echo "2. Change size"
echo -e "3. Exit\n"
read action

case $action in
1)
echo "Enter name:"
read name
lines=$(find . -name $name)
echo "Enter format"
read format
mogrify -format $format $name
;;
2)
echo "Enter name:"
read name
lines=$(find . -name $name)
echo "Enter size"
read size
convert $name -resize $size! $name
;;

3)
echo "Bye"
break;;
esac
done






