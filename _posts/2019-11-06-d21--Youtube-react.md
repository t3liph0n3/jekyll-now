---
layout: post
title: r2d21  Youtube-react
category: 100daysOfCode
---

![ReactJS](../images/icon-ReactJS.ico)

This week I am on an equipment course. Yesterday I was sick and so have repeated day 21.
Today I watched https://www.youtube.com/watch?v=U9T6YkEDkMo to see how to make a ReactJS app that uses an API.

It was intersting and had:
* **useEffect** every time the component re-renders itsself, useEffect is run.
* **import React,{useEffect, useState} from "react"** to allow useEffect to be used
* add _**await**_ before external requests ie: _const xyz = await fetch(apiRequest);_ 
* **useState** by _const [DataA, DataB] = useState([]);_
* You can access Json subparts by *nameX.idA.idA1* (for nameX: [idA:[idA1: stuff],]) sort of like drilling down a document tree
* arrow functions _REQUIRE_ a **key={_something unique_}** (in x.map( y => ( key={})))


Things to investigate:

    * environment tools to hide keys.