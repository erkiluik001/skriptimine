#!/bin/bash
#
#10 esimese arvu summa
#
echo -n "Sisesta arv:" #palub kasutajal sisestada arvu
read arv #loeb arvu
summa=0
for (( arv=1; arv<11; arv++ )) #arvutab
do #alustab do käsku
jaak=$(($arv % 2)) #arvutab
if [ $jaak == 0 ]; then #arvutab
summa=$(( $summa+$arv )) #arvutab
echo $summa #echob $summa vastuse
fi #lõpetab if käsu
done #lõpetab do käsu
echo "Arvude vahemikus 1 kuni 10 (kaasaarvutatud) paarisarvude summa on: $summa" #vastus
#
#lõpp
