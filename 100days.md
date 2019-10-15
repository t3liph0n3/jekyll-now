---
layout: default
title: 100 days of code log
permalink: /100daysOfCode/
---

  {% for posts in site 100log %}
    <h2>{{ 100log.title }}</h2>
    <h4>mood: {{100log.mood}} | listening to: {{100log.music}}</h4>
    <p>{{ 100log.content | markdownify }}</p>
  {% endfor %}
