---
layout: post
title: r2d7  React-problems
category: 100daysOfCode
---

![ReactJS](../images/icon-ReactJS.io)

Today I am trying to get React to work. But I can not figure out how to get elements rendered.

## Elements not working as I expected ##

I have simply split my App() into two sections in my App.js:
```
function App() {
  return (
    <div className="App">
      Hi, welcome.
      <count100Days />
    </div>
  );
}

function count100Days() {
  return (
    <div className="count100Days">
      <b> count down</b>
    </div>
  );
}
```

But in the body of my HTML is:
```
<div id="root">
    <div id="App">
        Hi, welcome.
        <count100Days></count100Days>
    </div>
</div>
```
I would expect the words count down to be in the count100Days tag.

## Getting Elements to work ##

To fix this, I put **Count100Days** in it's own file _Count100Days.js_.
> import './Count100Days'
* This caused an error "Count100Days not defined..."
* After a long while, and many tests I figured out it was becasue I needed to put
> import Count100Days from './Count100Days'

So now my code works at passing the 2nd element into the first. It looks like:
![screenshot of files](../images/r2d7.png)


## I don't know what to do when: ##
In my [Organiser](https://github.com/t3liph0n3/Calendar/blob/master/organiser.js) I use JS to build a calendar. I am unsure how to migrate it.

What should I do to change:
> document.getElementById("daysCount").innerHTML = dayCount; 
to something that works in