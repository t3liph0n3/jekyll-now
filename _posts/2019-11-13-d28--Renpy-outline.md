---
layout: post
title: r2d28  Renpy-outline
category: 100daysOfCode
---

![Renpy](../images/icon-RenPy.ico)

Today I outlined a little bit of my **lost in transition** Renpy game.
I did up a spreadsheet, if the game takes place over a year and a half (student visa initial time) it gives the character a 64/65 week schedule. I then populated it with school terms from a language school I attended, JLPT dates and Japanese public holidays.

Then I thought about the stats the character would need:
  * Listening
  * Speaking
  * Reading
  * Writing
  * Vocabulary
  * Grammar
  * Culture
  * Anime/Science/History
  * Fitness
  * Gaming
  * Initiative
  * Music/Art/Sport

For the stats, things like Listening, Speaking, Reading, Writing, Vocabulary and Grammar would be checked for JLPT tests. So I thought of how that would need to be balanced, because the JLPT tests are at week 13, 35 and 65. Class terms also have tests at weeks 12, 25, 37, 49 and 63. With weeks for holidays.

I thought about how to simulate some studying methods, like Heisig being a slow burn to learn Kanji that would not translate to anything but reading for a long time (if at all).

Then I thought about reducing the stats to just 6:
  * Reading/Writing
  * Listening/Speaking
  * Vocabulary/Grammar
  * Fitness
  * Initiative
  * Culture* (maybe make this the players option, as in "that what is measured improves" if they could choose, travel, drawing, IT...)

I also investigated ways to display this data:
* A stats page https://www.renpy.org/wiki/renpy/doc/cookbook/Information_Screen
that lets you have a button to check the stats
* A stats radar plot https://github.com/jsfehler/renpy-radarchart/blob/master/radarchart.rpy
displays the stats on a radar circle, so you can see if you are stronger in Speaking that Gaming etc.
