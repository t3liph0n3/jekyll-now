---
layout: post
title: bash-script
---

# Editing my bash script for making posts

Today I edited my bash script, so rather than copy the first post, it generated a new header and then opened **nano** so I could type my entry.

```
#!/bib/bash
# make a new entry, with header for Jekyll blog, then open Nano to edit

d=$(date +%Y-%m-%d)
echo what is the title of this post?
read NAME
if [ -n "$NAME" ]; then
    header=$'---\nlayout: post\ntitle: '$NAME$'\n---\n\n'
    echo "$header" >  $d-$NAME.md
    nano $d-$NAME.md
else
    echo no title, no post
fi
```
