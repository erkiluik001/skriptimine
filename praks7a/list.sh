#!/bin/bash
#
#tuvastaja
#
echo -n "Sisesta kataloogi nimi:"
read kataloog
cd $kataloog
type=$(ls -l)
for type in $type; do
if [ $type == '-' ]; then
echo -n "file:"
let fail++
if [ $type == 'd' ]; then
echo -n "kaust:"
let kasut++
if [ $type == 'l' ]; then
echo -n "link:"
let link++
fi
done
echo "Selles kataloogis on $fail faili, $kaust katalooge ja $link linke."
#
#lõpp
