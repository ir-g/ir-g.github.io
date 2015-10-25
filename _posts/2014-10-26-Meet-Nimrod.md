---
layout: post
published: true
description: A fast and reliable language, which compiles to C.  
---

[Nimrod](http://nimrod-lang.org/) is a programming language which, through compilation to C, can generate small executables which don't require any dependencies, making it an ideal language for producing distributable applications. Most notably, it has its own package manager, Nimble, and Sinatra-esque web server framework, [Jester](https://github.com/dom96/jester/).


Here is an example web server, with Jester and Nimrod.


{% highlight nimrod %}
# myapp.nim
import jester, strtabs, htmlgen

get "/":
  resp h1("Hello world")

get "/hello/@name?":
  # Matches "/hello/"(becuse of the "?")
  # and "/hello/<anything>" (becuse of the "@")
  if @"name" == "":
    resp "No name received :("
  else:
    resp "Hello " & @"name"

run()
{% endhighlight %}
