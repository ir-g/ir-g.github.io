---
title: Sci Py Revision
---

<h2>
Sci Py
<part path="/">Home
</part>
<part path="about">About
</part>
<part path="all">Site Map
</part>
</h2>
<hr />
<a href="?">Home</a> &bull; <a href="?about">About</a> &bull; <a href="?all">Listing</a>
<hr />
<part path="/">


* Rolling Google Doc [here](https://docs.google.com/document/d/1Syzfq5H01I3UxJu7roGN9M-xQ3XuoWdYDzF6vezvVMg/edit#)



</part>
<part path="about">About
</part>
<part path="all">
<div id="pagelist">
</div>
</part>

<script>
  var paths = [];
  var path = "/";
  var pageListHtml = "";
  if(window.location.search){
    path = window.location.search.substring(1);
  }
  for(var i = 0; i<document.getElementsByTagName("part").length; i++){
    var part = document.getElementsByTagName("part")[i];
    if(part.hasAttribute("path")){
      console.log("hasPath");
      if(!paths.includes(part.getAttribute("path"))){
        paths.push(part.getAttribute("path"));
      };
      if((part.getAttribute("path")==path)){
        part.style.display = "block";
      }
    }
  }
  for(var i = 0; i<paths.length; i++){
    pageListHtml +="<a href='?"+paths[i]+"'>"+paths[i]+"</a><br>";
  }
  document.getElementById("pagelist").innerHTML=pageListHtml;
  /*UPDATE PAGE TITLE ATTEMPT*/
  /*document.title = document.getElementById("sitetitle") + "&middash;" + document.getElementById("pagetitle").innerHTML;*/
</script>
