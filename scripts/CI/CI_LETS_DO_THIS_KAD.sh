#!/bin/bash
# Sciezka to miejsce, w którym znajduje się skrypt
sciezka=$(dirname "$0")

cd $sciezka/../..

wget https://raw.githubusercontent.com/PolishFiltersTeam/KAD/master/KAD.txt

./scripts/ECODFF.sh ./KAD.txt
rm -r ./KAD.txt
