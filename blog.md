---
layout: default
title: Contact Me
permalink: /blog
---

  <h1>Blog Posts</h1>
  <div class="posts">
    {% for post in site.posts %}
      <p>
        <span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ post.url }}">{{ post.title }}</a>
        {% if post.description %}<br> {{description}}{% endif %}
      </p>
    {% endfor %}
  </div>
