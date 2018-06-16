---
title: "Paths"
---

    -- Render the post layout for this post.
 {% for post in site.posts %}
    {{post.path}} - {{post.url}} - {{post.date | date: '/%Y-%m-%d/'}}{{post.title}} - {{post.date | date: '%B %d, %Y'}}
  {% endfor %}
