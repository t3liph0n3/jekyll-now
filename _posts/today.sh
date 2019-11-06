#!/bin/bash
# make a new entry, with header for Jekyll blog, then open Nano to edit

d=$(date +%Y-%m-%d)
c=$((($(date +%s)-$(date +%s --date "2019-10-16"))/(3600*24)))

echo what is your tag line?
read NAME
header=$'---\nlayout: post\ntitle: r2d'$c$'  '$NAME$'\ncategory: 100daysOfCode\n---\n\n'$NAME
echo "$header" >  $d-d$c--$NAME.md
nano $d-d$c--$NAME.md
