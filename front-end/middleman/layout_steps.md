middleman init demo
cd demo
middleman server
go to chrome and open localhost:
stt (open in sublime)
show them the basic layout file and mention the yield
go to "index.html.erb" and change something
change the file into this:
---
title: Welcome to Le Wagon Brussels
---

<div class="welcome">
  <h1>Le Wagon is Watching</h1>
  <p class="doc">
    <%= link_to "Find out more about Le Wagon", "http://lewagon.org/" %>
  </p><!-- .doc -->
</div><!-- .welcome -->

show that the title changed, even when it's still the same in the layout
delete the title line from the index.html.erb
show that the title changed again

Now let's close this one and actually open the boilerplate le wagon provided for us
cd ~/code/lewagon-lectures/front-end/lecture
middleman server
stt

let's look at the folder structure and the files inside
go to the localhost and click on "pricing" or "contact"
it will not be able to load, since those pages doesn't exist
create pricing.html.erb and contact.html.erb
go back to the localhost -> it works!

YAY for layouts!

Now in our contact file, add a link and a image, tell them we can do this with helpers.
Helpers are here to simplify common HTML tasks, you can find more her https://middlemanapp.com/basics/helper_methods/
Add:
<div>
  Hello from the contact page
</div>
<%= link_to "Press", "press.html" %>
  <!-- => <a href="/press.html">Press</a> -->
  <%= image_tag "middleman.png" %>
  <!-- => <img src="/images/middleman.png"> -->

You can also give classed to a helper method:
 <%= link_to "Press", "press.html", class: "btn btn-primary" %>
<!-- => <a href="/press.html" class="btn btn-primary">Press</a> -->
<%= image_tag "middleman.png", id: "logo", class: "img-circle" %>
<!-- => <img src="/images/middleman.png" id="logo" class="img-circle"> -->
<% link_to 'http://mysite.com' do %>
  <%= image_tag 'middleman.png', class:"img-circle" %>
<% end %>


