---
title: Code
---
<h2>Code</h2>
I host some of my code on [Github](https://github.com/isaacrg) and [Bitbucket](https://bitbucket.org/isaacrg). Some of Guthub repositories are listed below.

<div id="list"><i>Loading</i></div>
<script src="/libs/jx.min.js"></script>
<script>
  jx.load('https://api.github.com/users/isaacrg/repos',function(data){
    for(i in data){
    	console.log(data[i]);
    	if(i==0){
    	  document.getElementById("list").innerHTML="";
    	}
      document.getElementById("list").innerHTML = document.getElementById("list").innerHTML + '<li><a href="'+data[i].html_url+'?via=ir-g.uk">'+data[i].name+'</a> - '+data[i].description+'';
    }
  },'json');
</script>
