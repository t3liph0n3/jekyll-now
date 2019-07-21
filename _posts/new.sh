#!/bib/bash
# make a new entry, with header for Jekyll blog, then open Nano to edit

d=$(date +%Y-%m-%d)
echo what is the title of this post?
read NAME
if [ -n "$NAME" ] && [ "$NAME" = "${NAME//[\ ]}" ]; then
    header=$'---\nlayout: post\ntitle: '$NAME$'\n---\n\n'
    echo "$header" >  $d-$NAME.md
    nano $d-$NAME.md
else
    echo no title, no post
fi
