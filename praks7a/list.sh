#!/bin/bash
#
#tuvastaja
#
echo -n "Sisesta kataloogi nimi:"; read kata #küsib kausta nime
names=$(ls -l $kata | awk '{if(NR>1)print $9}')
types=$(ls -l $kata | awk '{if(NR>1)print substr ($0, 0, 2)}')
num=1
file=0
kauste=0
linke=0

for type in $types; do #alustab do käsku ning nimetab type
if [ $type == '-' ]; then
echo -n "file:" #echob file kui on  fail
let file++ #nimetab file ehk $file
elif [ $type == 'd' ]; then
echo -n "kaust:" #echo kaust kui on kaust
let kauste++ #nimetab kauste nagu $kauste
elif [ $type == 'l' ]; then
echo -n "link:" #echob link kui on link
let linke++ #nimetab linke kui #linke
fi #lõpetab if käsku
echo $names | cut -d ' ' -f $num #echob nime
let num++ #num ehk $num
done #lõppetab do käsu
echo "Selles kaustas on $file faili, $kauste kasute ja $linke linki" #echob 
#lõpp
