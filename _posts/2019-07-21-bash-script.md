---
layout: post
title: bash-script
---

# A simple bash script for making Jekyll entries.

Today I updated my bash-script _new.sh_ .

Originally _new.sh_ copied a post to a new file with today's date and post title.

Now _new.sh_ :
1. asks for the title, 
2. generates the header,
3. outputs the header to file, 
4. then opens **nano** to type the conent.

```
#!/bib/bash
# make a new entry, with header then open nano

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

I then tested the script and found, if you have a two word title it fails to generate the file (because the commands becomes corrupted with spaces in the file name)
So I searched the web and found you can use:

> if [ -n "$NAME" ] && [ "$NAME" = "${NAME//[\ ]}" ];

To check that the title is not empty, and that it doesn't contain spaces.

