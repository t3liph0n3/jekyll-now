---
layout: default
title: 100 days of code log
permalink: /100daysOfCode/
---
# 100 days of code #
# 15 Oct - 23 Jan #

{% for category in site.categories %}
  <h3>{{ category[0] }}</h3>
  <ul>
    {% for post in category[1] %}
      <li><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
{% endfor %}
