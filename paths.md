---
title: "Paths"
---

<script>
var urlArray = {};  //Old URL - New URL
var pathOldUrlArray = {}; //Post Path - Old URL
var pathNewUrlArray = {}; //Post Path - New URL
</script>
{% for post in site.posts %}{% assign urlPieces = post.url|split:'/' %}
{{urlPieces}}
{% capture exUrl %}/blog/{{post.date | date: '%Y-%m-%d'}}-{{urlPieces[-1]}}/{% endcapture %}
{% capture newUrl %}/blog/{{post.date | date: '%Y-%m-%d'}}/{{urlPieces[-1]}}/{% endcapture %}

    {{exUrl}}  {{newUrl}} -- {{post.path}} - {{post.url}} - {{post.date | date: '/%Y-%m-%d/'}}{{urlPieces[-1]}}/ - {{post.date | date: '%B %d, %Y'}}

<script>
urlArray['{{exUrl}}']="{{newUrl}}";
//pathOldUrlArray['{{post.path}}']="{{post.url}}";
//pathNewUrlArray['{{post.path}}']="{{newUrl}}";
</script>
{% endfor %}
