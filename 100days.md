---
layout: default
title: 100 days of code log
permalink: /100daysOfCode/
---

  {% for posts in site.100days %}
    <h2>{{ 100days.title }}</h2>
    <h4>mood: {{100days.mood}} | listening to: {{100days.music}}</h4>
    <p>{{ 100days.content | markdownify }}</p>
  {% endfor %}
