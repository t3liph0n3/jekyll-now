#!/bin/bash
# make a new entry, with header for Jekyll blog, then open Nano to edit

d=$(date +%Y-%m-%d)
c=$((($(date +%s)-$(date +%s --date "2019-10-15"))/(3600*24)))

echo what is your tag line?
read NAME
echo what is your current mood?
read MOOD
echo what are you currently listening to?
read MUSIC

header=$'---\nlayout: 100log\ntitle: r2d'$c$'  '$NAME$'\nmood: '$MOOD$'\nmusic: '$MUSIC$'\n---\n\n'$NAME
echo "$header" >  $d-d$c--$NAME.md
nano $d-d$c--$NAME.md