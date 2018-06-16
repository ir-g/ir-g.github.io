---
title: "Paths"
---

    -- Render the post layout for this post.
 {% for post in site.posts %}
    {{post.path}} - {{post.url}}
  {% endfor %}
