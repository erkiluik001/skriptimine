#!/bin/bash
#
#algarvu tuvastaja
echo -e "Sisesta arv: \c" #küsib kasutajalt arvu
read arv #loeb vastust
if [ $arv -eq 0 -o $arv -eq 1 ]; then #if käsu algus
echo "$arv - ei ole algarv" #echob vastuse kui ei ole algarv
else
jagaja=2
jaak=$(($arv % $jagaja))
while [ $jaak -ne 0 ]
do #do käsu algus
jagaja=$(($jagaja + 1))
jaak=$(($arv % $jagaja))
done #do käsu lõpp
if [ $arv -eq $jagaja ]; then
echo "$arv - on algarv" #echob kui on algarv
else
echo "$arv - ei ole algarv" #echob kui ei ole algarv
fi #if käsu lõpp
fi #if käsu lõpp
#lõpp
echo -n "Siin on näitatud 1-20ni mis on algarvud ja mis mitte."
for (( num=1; num<=20; num++ ))
do
jagub=0
for (( div=1; div<=$num; div++))
do
jaak=$(($num % $div))
if ((jaak == 0)); then
let jagub++
fi
done
if ((jagub <= 2)); then
echo "$num - on algarv"
else
echo "$num - ei ole algarv"
fi
done
#lõpp
