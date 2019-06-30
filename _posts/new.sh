#!/bib/bash
d=$(date +%Y-%m-%d)
echo what is the title of this post?
read NAME

cp 2014-3-3-Hello-World.md $d-$NAME.md
