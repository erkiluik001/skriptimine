
#!/bin/bash
#
#ringi arvutaja
echo -n "Sisesta oma ringi raadius (cm):" #kasutaja peab sisestama raadiuse mõõdu
read cm #loeb kasutaja vastust
S=`echo "3.14 * ( $cm * $cm )" | bc` #valem pindala arvutamiseks
U=`echo "2 * 3.14 * $cm" | bc` #valem ümbermõõdu arvutamiseks
echo "Sinu ringi pindala on $S ruutsentimeetrit ja ümbermõõt on $U cm." #annab vastused
#
#lõpp

