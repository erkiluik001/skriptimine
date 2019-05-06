#!/bin/bash
#
#kataloogi pakkimine
echo -n "Sisesta kataloogi nimi mida tahad pakkid:" #küsib kasutajalt kataloogi nime mida soovib pakkida
read kata #loeb kasutaja vastust
kt=`echo $kata | cut -c 15-30`
tar -czf $kt.tar.gz $kata #teeb kasutaja soovitud kataloogi pakkiud kataloogiks
mv $kt.tar.gz /home/user/skriptimine/praks4a/backup #liigutab just pakkitud kataloogi backup kataloogi mille kasutaja valis
echo "kataloogi $kata backup-i nimi on $kt.tar.gz ja ta asub /home/user/skriptimine/praks4a/backup" #seletab kasutajale mis juhtus
#
#lõpp
