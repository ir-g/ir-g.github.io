---
layout: default
title: Contact Me
---

<h2><a name="title" href="#title" style="color: inherit; text-decoration: inherit; background-color: #2196F3; color:white; padding: 5px;">Contact Me</a></h2>

You can email me at:

`isaac.reid.guest@gmail.com`

*or use the form below:*

<div>
<form id="form" action="https://formspree.io/xnqgapwk" method="POST" class="form-stacked form-light">
    <input type="hidden" name="_next" value="https://ir-g.uk/m/email-thanks/">
    <label for="email">Your email</label>
    <input type="text" id="text-email" name="email" placeholder="Your Email Address">
    <br>
    <label for="content">Your message</label>
    <textarea type="text" name="content" rows="5" placeholder="What would you like to say?"></textarea>
    <br>
    <input type="submit" id="form-button" value="Send Message">
    <div id="form-status"></div>
  </form>
</div>

<style>
  input, textarea, button, #form-status{
    box-sizing:border-box
  } 
  #text-email{
      width: 100%;
      font-family: helvetica;
      background: darkgray;
      resize: none;
      color: black;
      border: none;
      padding: 5px;
      font-style: italic;
  }
  textarea{
      width: 100%;
      font-family: helvetica;
      background: darkgray;
      resize: none;
      color: black;
      border: none;
      padding: 5px;
      font-style: italic;
  }
  #form-button{
      font-family: helvetica;
      background: darkgray;
      resize: none;
      color: black;
      border: none;
      padding: 5px;
      font-style: italic;
      width: 100%;
  }
  #form-status{
      background-color: #2196F3;
      color: white;
      padding: 5px;
      width: 100%;
  }
  #form-status:empty{
      display: none;
  }
</style>
<script>
  window.addEventListener("DOMContentLoaded", function() {

    // get the form elements defined in your form HTML above
    
    var form = document.getElementById("form");
    var button = document.getElementById("form-button");
    var status = document.getElementById("form-status");

    // Success and Error functions for after the form is submitted
    
    function success() {
      form.reset();
      button.style = "display: none ";
      status.innerHTML = "Thanks, I'll try to reply soon!";
    }

    function error() {
      status.innerHTML = "Oops! There was a problem. Try again in a moment?";
    }

    // handle the form submission event

    form.addEventListener("submit", function(ev) {
      ev.preventDefault();
      var data = new FormData(form);
      ajax(form.method, form.action, data, success, error);
    });
  });
  
  // helper function for sending an AJAX request

  function ajax(method, url, data, success, error) {
    var xhr = new XMLHttpRequest();
    xhr.open(method, url);
    xhr.setRequestHeader("Accept", "application/json");
    xhr.onreadystatechange = function() {
      if (xhr.readyState !== XMLHttpRequest.DONE) return;
      if (xhr.status === 200) {
        success(xhr.response, xhr.responseType);
      } else {
        error(xhr.status, xhr.response, xhr.responseType);
      }
    };
    xhr.send(data);
  }
</script>
