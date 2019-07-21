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

### Here is the code:

~~~~
#!/bin/bash
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
~~~~

## combining strings in bash
When you combine strings you use:
* $one$two$three
* _not $one $two $three, $(one-two-three), or $one+$two+$three_

## redirecting the output in bash
Using **>** you can redirect the output to a file.
Apparantly you can use >> to append (add to the end of) a file. But I needed to generate a file, in _new.sh_ printing the header is redirected **(>)** to the new file.

## Bash can use the command line
I mean, to open another program, I can just type what I would on the command line. It will likely be run.

I did scratch my head trying to figure out how to call nano to open the new file. But it was relatively simple...

## double quoation marks
Double quotes "" cause strings etc. to be processed.

```
#!/bin/bash
TEST=drill
echo "this is a $TEST"
echo 'this is a $TEST'
```

> this is a drill
>
> this is a $TEST


![bash icon](../images/bash-icon.png "/")


## Testing
I then tested the script and found, if you have a two word title it fails to generate the file (because the commands becomes corrupted with spaces in the file name)
So I searched the web and found you can use:

> if [ -n "$NAME" ] && [ "$NAME" = "${NAME//[\ ]}" ];

To check that the title is not empty, and that it doesn't contain spaces (by checking if the string is equal to a string with all spaces removed).

## bash string manipulation
I learnt Bash has native string manipulation. **"${string//[\ ]}"** is actualy a replacement operation. Where ${string//test/replace} but without the final / it deletes the test. 

This [Gist cheat-sheet](https://gist.github.com/magnetikonline/90d6fe30fc247ef110a1) has this and some other operations, or read the [GNU Bash manual](https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html#Shell-Parameter-Expansion) for other native string manipulation operations.
