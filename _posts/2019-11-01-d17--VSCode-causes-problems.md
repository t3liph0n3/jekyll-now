---
layout: post
title: r2d17  VSCode-causes-problems
category: 100daysOfCode
---

![Yarn](../images/icon-YarnPkg.ico)
![GNU/Bash](../images/icon-gnu.ico)


Error: ENOSPC: System limit for number of file watchers reached,

I figured out that it is caused by VSCode watching the folder for changes too. 
It took me some time trying to figure out,
I investigated:
* https://medium.com/@nagella_ranjith/when-running-yarn-start-reset-cache-or-react-native-start-reset-cache-you-might-encounter-the-fc6c06abeaf4
that suggested running [lsof](https://debian-administration.org/article/184/How_to_find_out_which_process_is_listening_upon_a_port).
* I couldn't manage to find the socket, or a PID. 
* Reading the [gatsby issue](https://github.com/gatsbyjs/gatsby/issues/11406) I thought maybe it was VSCode.
* So I tested by closing VSCode then running **yarn start**, it worked! ![VSCode](../images/icon-VScode.ico)
    * Now to find out how to stop or pause VSCode, so I can edit my page and load the ReactJS test service on the fly...

That issue stopped me from testing writing the sections for my Habit Tracker component in ![ReactJS](../images/icon-ReactJS.ico)
ReactJS.

Didn't get around to my plan of opening a file to save my Habit-tracker data in json or something like: 
1. https://stackoverflow.com/questions/46793310/fetch-local-json-file-from-public-folder-reactjs
2. https://www.quora.com/How-do-I-read-JSON-file-using-reactjs, or
3. https://stackoverflow.com/questions/46548600/import-json-data-in-to-array-in-reactjs

Maybe tomorrow...
The little one is wanting a feed or sleep or something...