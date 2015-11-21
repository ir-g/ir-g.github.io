---
layout: default
title: Contact Me
---

## Contact Me

Email me at:

   `isaac.reid.guest@gmail.com`
   
or use the form below:

<div>
  <form action="https://formspree.io/{{ site.email }}" method="POST" class="form-stacked form-light">
    <input type="hidden" name="_next" value="{{site.url}}/m/email-thanks/" />
    <input type="text" name="email" style="width: 100%; resize: none; border: none; padding: 0;" placeholder="Your Email Address">
    <br>
    <textarea type="text" name="content" style="width: 100%; resize: none; border: none; padding: 0;" rows="5" placeholder="What would you like to say?"></textarea>
    <br>
    <input type="submit" style="width: 100%; resize: none; border: none; padding: 0;" value="Send Message">
  </form>
</div>
