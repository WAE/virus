#!/usr/bin/env sh
################################################################################
DATE="$(date +%Y%m%d)"
DATES="$(date +%s)"
RDR="$HOME/WAE/virus"
"$RDR"/coronavirus/scripts/by.new.mortality.sh
"$RDR"/coronavirus/scripts/by.new.spread.sh
mv "$RDR"/coronavirus/www.worldometers.info/coronavirus/"$DATE" "$RDR"/covid19/www.worldometers.info/coronavirus
"$RDR"/covid19/scripts/by.new.mortality.sh
"$RDR"/covid19/scripts/by.new.spread.sh
[ -d "$RDR/$DATE" ] && mv "$RDR/$DATE" "$RDR/$DATE/$DATES"
mv "$RDR"/covid19/www.worldometers.info/coronavirus/"$DATE" "$RDR"
# do.viruses.sh OEF
