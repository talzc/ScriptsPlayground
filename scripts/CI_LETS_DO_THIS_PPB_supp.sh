#!/bin/bash
# Sciezka to miejsce, w którym znajduje się skrypt
sciezka=$(dirname "$0")

cd $sciezka/..

wget https://raw.githubusercontent.com/PolishFiltersTeam/PolishAnnoyanceFilters/master/PPB_uBlock_AdGuard.txt

./scripts/expired_domains.sh $sciezka/../PPB_uBlock_AdGuard.txt
rm -r ./PPB_uBlock_AdGuard.txt
git add --all
git commit -m "Check [ci skip]"
git push https://PolishJarvis:${GIT_TOKEN}@github.com/PolishFiltersTeam/ExpiredDomainsFilterListsPlayground.git HEAD:master > /dev/null 2>&1
