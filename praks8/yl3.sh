#!/bin/bash
#
#
read -p "Sisesta kuu number:" kuu #palub kasutajal sisestada kuu numbrid ja loeb seda kohe
case $kuu in #alustab case
"1") echo "Jaanuar";; #kui kasutaja sisestas 1 siis ta saab vastuseks jaanuar
"2") echo "Veebruar";; #kui kasutaja sisestas 2 siis ta saab vastuseks veebruar
"3") echo "Marts";; #kui kasutaja sisestas 3 siis ta saab vastuseks marts
"4") echo "Aprill";; #kui kasutaja sisestas 4 siis ta saab vastuseks aprill
"5") echo "Mai";; #kui kasutaja sisestas 5 siis ta saab vastuseks mai
"6") echo "Juuni";; #kui kasutaja sisestas 6 siis ta saab vastuseks juuni
"7") echo "Juuli";; #kui kasutaja sisestas 7 siis ta saab vastuseks juuli
"8") echo "August";; #kui kasutaja sisestas 8 siis ta saab vastuseks august
"9") echo "September";; #kui kasutaja sisestas 9 siis ta saab vastuseks september
"10") echo "Oktoober";; #kui kasutaja sisestas 10 siis ta saab vastuseks oktoober
"11") echo "November";; #kui kasutaja sisestas 11 siis ta saab vastuseks november
"12") echo "Detsember";; #kui kasutaja sisestas 12 siis ta saab vastuseks detsember
*) echo "Sellise numbriga kuud pole"
esac #lõppetab case käsu
#lõpp
