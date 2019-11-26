---
layout: post
title: r2d41  Dreaming-scripting
category: 100daysOfCode
---

![Renpy](../images/icon-RenPy.ico)

## J-game so far ##

The game has a simulation at the shell, that presents the player with 3 stats - Physical, Social and Mental. That are spent to do things like schedule a jog. As well as three groups of Language Skills, Talent, Skill and Knoweldge.
These each have 4 sub-skills that are hiden from the player - Academics, Athletics, Arts and Science in Talents. Reading, Listening, Pronounciation adn Sport in Skills. Vocab, Grammar, Kanji and General in Knoweldge.

The game revolves around the player time-tabling their week. THey get 2-5 sloots to schedule things and are presented a one day of the week, to plan their blocks. From this, the week occurs, if they do not burn-out (go into negative Mental stat) they get a weekend, to do activities and maybe some bonuses for doing homework etc.
If they go into negative stats, and do not do something to recover it limits the activities they can select the next weekend. Maybe they will go into negative Physical and not be able to jog the next week. Or negative Social and not be able to go to a study group.

The game has been in this state for a few days now. I last pushed an update 3 days ago. That I called **core game loop**.

## The Core Game Loop ##

1. **Monday** - updates the counters for the week.
2. **ambient** - that plays music, sets the scene for the season. 
3. **Story** - special events for the story of the game, tell the player it is getting hot etc.
4. If it is a week of class:
  i. **TimeTable** let the player select the activities for the week
  ii. **Study Calculator** calculate the improvement of language skills
4. If it is a week of holiday:
  i. **Holidays** - select things to do for the holiday week
5. **Weekend** events for the weekend. Of note, tests are weekend events, if the week is the end of a school term there is a school test, if it is JLPT weekend the JLPT occurs.

## Writing the Script ##

I am now stuck writing the script.

> My basic idea is/was: The player has just been made redundant and is wanting to give learning a language and going to school a try.

But I am getting distracted instead of brainstorming all the things that I need to think about.
The story aspect of the game at the moment is just a stub. But I have been thinking that maybe each story or holiday needs to give 3 or 4 options for the focus. It could be something like:
* Money
* Love
* Travel

That you have to do events for. Maybe the player could aim to visit each of the 47 Prefectures of Japan - that would be difficult to do. But if they travelled every weeend and holiday it could take a year or so.
Or they could try and find a wife, go to Goukon parties, use Tinder, try and find a solid job that attracts japanese women that chase that sort of thing.

I figure the Protagonist was in a bit of a dead end job. Maybe manufacturing, that they fully intend on only staying a year or two. Then applying to Universtiy once they had cash. But then 2 years turned into 5, they found they had no friends and then they loose their job and are quickly approaching 30.

But as I get distracted, I then enter a sort of _meladative dreaming_ train of thought of assessing my own life, procrastinating trying to figure out the past viablitily of some actions, rather than writing the script.
