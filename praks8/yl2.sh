#!/bin/bash
#
#
echo -n "Sisesta number:" #palub kasutajal sisestada arvu
read arv #loeb arvu
summa=0
while [ $arv -ne 0 ] #arvutab
do #alustab do käsku
jaak=$(($arv % 10)) #arvutab
summa=$(($summa + $jaak)) #arvutab
arv=$(($arv / 10)) #arvutab
done #lõppetab do käsku
echo "$summa" #echob summa
#lõpp
