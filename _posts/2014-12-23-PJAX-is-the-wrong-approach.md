---
layout: post
published: true
description: Make a fast site, not with extra bloatware.
---

**This article assumes basic knowledge of HTML and JavaScript.**

----

A number of sites are taking up the usage of a technology known as PJAX(Push-State AJAX), which is explained below:

> PJAX loads html from your server into the current page without a full page load. It’s ajax with real permalinks, page titles, and a working back button that fully degrades.

Explanation via [pjax.herokuapp.com](http://pjax.herokuapp.com)

Fundamentally, a relatively small JS library is required for PJAX, which in turn listens for clicks on any anchor tag on the page. This already starts to slow down certain browsers, notably IE and mobile.

Then, the script decides whether to try PJAX, or redirect the user to the page forcibly, and even then, that isn’t always successful.

And then there is yet another problem — scrolling. Depending on the implementation, some browsers(even Chrome!) won’t jump to the top of the page when you change page. This can be resolved with javascript “Scroll to point X” magic, but this add more code. This is getting silly.

PJAX is a terrific idea, I applaud implementations of it on some sites — GitHub most notably, but the urge to jump to JS magic tricks for every site is ridiculous. Consideration for speed through efficiency is a wiser idea than trying to find a library for it.

*Also posted on [Medium](https://medium.com/@isaacreidguest/pjax-is-the-wrong-approach-817e31960fdc).*

**Read more:** [This brilliant talk](http://web.archive.org/web/20181125011301/http://idlewords.com/talks/website_obesity.htm) discusses "The website obesity crisis" in words far better than my own. 
