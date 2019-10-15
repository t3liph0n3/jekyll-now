#!/bin/bash
# make a new entry, with header for Jekyll blog, then open Nano to edit

d=$(date +%Y-%m-%d)
c=$((($(date +%s)-$(date +%s --date "2019-10-15"))/(3600*24)))

echo what is the title of this post?
read NAME
if [ -n "$NAME" ] && [ "$NAME" = "${NAME//[ ]}" ]; then
    header=$'---\nlayout: post\ntitle: d-'$c$'r2-'$NAME$'\n---\n\n'
    echo "$header" >  $d-d$c-$NAME.md
    nano $d-d$c-$NAME.md
else
    echo no title, no post
fi
