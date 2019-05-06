#!/bin/bash
#
#profil
echo -n "Sisesta oma nimi:" #kasutaja peab sisestama nime
read nimi #read loeb vastuse
echo "Tere Tulemast, $nimi!" #väljastab tulemuse
echo -n "Sisesta oma sünniaasta:" #küsib kasutajalt sünniaastat
read vanus #read loeb vastuse
h=`date +"%Y"` #h=praegune aasta ehk 2019,kui seda sama kasutada järgmine aasta siis tulemus oleks 2020
y=`expr $h - $vanus` #arvutab y tulemuse ehk praegune aasta miinus kasutaja väljastatud aasta
echo "$nimi, sina oled $y aastat vana." #annab vastuse nime ja aasta kui vana ta on
#
#Lõpp
