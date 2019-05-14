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
