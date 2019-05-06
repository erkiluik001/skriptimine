#!/bin/bash
#
#kataloogi pakkimine
echo -n "Sisesta kataloogi nimi mida tahad pakkid:" #küsib kasutajalt kataloogi nime mida soovib pakkida
read kata #loeb kasutaja vastust
echo "Sisestage kaust kuhu tahate backup-ida:" #küsib kasutajalt kuhu soovib kokku pakkitud kataloogi panna
read backup #loeb kasutaja vastust
tar -czf $kata.tar.gz $kata #teeb kasutaja soovitud kataloogi pakkiud kataloogiks
mv $kata.tar.gz $backup #liigutab just pakkitud kataloogi backup kataloogi mille kasutaja valis
echo "kataloogi $kata backup-i nimi on $kata.tar.gz ja ta asub $backup" #seletab kasutajale mis juhtus
#
#lõpp
