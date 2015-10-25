---
layout: post
published: true
description: A generic loading page for Garry's Mod servers.
---

I have developed a fast and easy to use loading page for Garry's Mod servers. While ironing out difficulties with the system may take some time, this page is already hosted, via Github Pages, and it takes advantage of Jekyll v2.x.x's new Coffeescript compilation capactity. This may well be useful for Server admins who wish for the downloaders of larger download packs to have an idea of what is going on. The site uses the javascript API described at [this page](http://wiki.garrysmod.com/page/Loading_URL) on the Garry's Mod wiki.

The website resides at [isaacrg.github.io/gmodpage/](http://isaacrg.github.io/gmodpage/), and is therefore available on Github at [isaacrg/gmodpage](https://github.com/isaacrg/gmodpage).

For GMod Server admins to add this loading page, then either:


**1.** Add this to the end of the shell script you are using

`+sv_loadingurl "isaacrg.github.io/gmodpage/"`

**2.** Or add this to your autoexec.cfg file

`sv_loadingurl "isaacrg.github.io/gmodpage/"`


Further information for installation is also available at the previously mentioned [wiki link](http://wiki.garrysmod.com/page/Loading_URL).
