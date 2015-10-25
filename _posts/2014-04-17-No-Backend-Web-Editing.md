---
published: true
layout: post
title: No backend web editing
description: Thooughts on the future of web apps.
---

The web is full of web-based editing software, designed to integrate with (primarily) [Dropbox](https://db.tt/8IVjLi1 "Dropbox (Extra storage free, with this link!)"), and [Google Drive](http://drive.google.com "Google Drive"). Many of these applications are good, but many of the smaller applications start slowing down, or even crashing the moment they get more users than their host likes, or can handle. This is down to a dependency on dynamic sites, where the page is custom-generated for each user.

Long story short, making a web-based editor for your cloud service can crash if you get too many users, except if you perform the simplest of workarounds. - Have no back-end, like [Sourcekit](https://github.com/kenotron/sourcekit) - an editor for Dropbox, which is (at present) only available as a Chrome Extenstion, and [Prose](http://prose.io), which is a web-based editor for Github, utilising the Github API - and Github Pages.

Both of these web apps are fast, reliable, and work well, hopefully paving the way for more front-end-only editor web apps.
