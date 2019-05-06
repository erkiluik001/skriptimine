#!/bin/bash
#
#tuvastaja
#
echo -n "Sisesta kataloogi nimi:"
read kataloog
cd $kataloog
find * -type f -exec echo fail: {} \;
find * -type d -exec echo kataloog: {} \;
find * -type l -exec echo link: {} \;
echo "Selles kataloogis on $fail faili, $kataloog katalooge ja $link linke."
#
#lõpp
