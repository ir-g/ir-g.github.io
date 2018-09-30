---
layout: post
published: true
description: A good way of debugging your Github pages - use Continuous Integration.
---

Hitting into the occasional error with Github Pages can be irritating, especially if you aren't currently on a device with Jekyll installed, especially when one is aware that it can be easily resolved when you have seen the error. Enter [Travis CI](https://travis-ci.org/), if you sign up to Travis, and then add the following .travis.yml file to your repository, and then go to your "account" section, on there, enable Travis for your Repo, and then get committing! Errors will the be shown on the repo's Travis-CI page. And best of all - its free.

{% highlight yaml %}
language: ruby
before_install:
- travis_retry gem install jekyll
- travis_retry gem install kramdown
script: jekyll build --safe
{% endhighlight %}

---

This was also posted on Github [Gist](https://gist.github.com/isaacrg/899139a72dace90bc730).
