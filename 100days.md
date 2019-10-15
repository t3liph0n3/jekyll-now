---
layout: default
title: 100 days of code log
permalink: /100daysOfCode/
---
# 100 days of code #
# 15 Oct - 23 Jan #

  {% for 100log in site 100log %}
    ## {{ 100log.title }} ##
    #### mood: {{100log.mood}} | listening to: {{100log.music}} ####
    {{ 100log.content | markdownify }}
  {% endfor %}
