# Problems with websites
Once you start coding more complex websites or multiple websites, you'll notice a few problems:
  - Often you'll have duplicate code, for example, you have a website with 5 pages, but on all 5 of them you want the same navigation bar. You'll have to copy that part on all your pages. But what if something changes? A solution for this is to use layouts and partials.
  - The same thing happens for your css files, you might use the same color declaration on different places for classes. But what if the CEO decides that the color needs to change? A variable would've been easy for this. In Css you can't do this, but in Sass you can. Sass stands for Syntactically Awesome Style Sheets and you should see it as CSS extension.

The bad news is that your browser only understands html and css, so no layouts or sass. If we want our browser to understand these technologies we're going to need a new tool. Middleman is going to be the hero of the day.

# Middleman
What is Middleman? Middleman is another front-end framework that allows us to build static websites, it will be able to compile our templates into html files and our sass files into css files.

https://middlemanapp.com/
https://middlemanapp.com/community/built_using_middleman/

# Setup
You need to have middleman installed, this was something you had to do on your first front-end day. If you skipped that part "gem install middleman" and to check if you actually installed it "middleman version"

# Creating a project
To create a new middleman project, you enter the following "middleman init demo" (where boom is the name of the project). When middleman is done installing everything, cd to the directory ("cd demo"). Let's open this project in Sublime. But before we're going to dive into the code and look at what's happening, let's go back to the terminal and put in the command "middleman server". This will launch the build-in server so that we can test our website without having to upload it every time! Something that is good to know, is that you don't have to stop and restart your server when you edit things on your website. Only when you would add gems to the gemfile your server needs a restart.

# Using Middleman
We introduced how to create a new middleman project (so you know for the future) but actually le wagon, has a nice middleman project already created for us, that you can fork (https://github.com/lienvdsteen/middleman-boilerplate) and use. So for all your middleman projects you can always start with that boilerplate! For your exercises for today they also ask you to use that boilerplate.

# Templates in Middleman
Before we start, it’s important to realize that Middleman uses ERB for templates as a default. You can change this but you've already had an introduction to ERB files, so it shouldn't be too much of a problem!

Let's take a look how templates usually work:
  - FOLLOW steps in layout_steps.md

# Sass
In our Middleman project that we've been working in, let's create a new stylesheet for the contact page:
 CREATE _contact.css.scss
 EDIT contact.html.erb -> add class="hello" to the div with "hello from the contact page"

 ADD to the _contact.css.scss:
  $font-stack:    Helvetica, sans-serif;
  $primary-color: #333;

  .hello {
    font: 100% $font-stack;
    color: $primary-color;
  }

  Refresh your browser, if nothing changes, you might want to kill your server and do middleman build (builds the files) and then start your server again!

  Because we're using sass, we can use variables and re-use that variable!
  add this to show them: (also add a <h1> to the contact partial)
    h1 {
      color: $primary-color;
    }
  Change the $primary-color value

# Sass chaining
Add this to your sass contact file:
a {
  color: $link-color;
}

a:hover {
  color: $primary-color;
}

Show them that in SASS with the help of chaining we can actually re-write this to:
a {
  color: $link-color;
  &:hover {
    color: $primary-color;
  }
}

# Sass Organizations:
How do you organize your sass files within a middleman project?
  - css for a specific page -> it goes into the pages folder _name_of_page.css.scss
  - css from an external library -> vendor folder
  - css for your layout files -> layout folder
  - general configurations -> config folder

# Middleman Datafiles
Sometimes it is useful to extract the data content of a page from the rendering. This way some team members can concentrate on building the database of content, while another team member can build the structure of the site. Data Files allows you to create .yml, .yaml or .json files in a folder called data and makes this information available in your templates. The data folder should be placed in the root of your project i.e. in the same folder as your project's source folder.

YAML files: Structure through indentation and sequence with dashes

In the "data" folder, create a "people.yml" file, add three friends:
friends:
  - Lien
  - Julia
  - Ciny

In your pricing partial, add the following:
<h1>Friends</h1>
<ol>
  <% data.people.friends.each do |f| %>
  <li><%= f %></li>
  <% end %>
</ol>

Let's add another yaml file, to practice a little more!

CREATE "employees.yml"
lien:
  role: admin
  birthyear: 1986
  zipcode: 9000
julia:
  role: manager
  birthyear: 1990
  zipcode: 9400

In pricing, add the following:
<h2>Employees</h2>
<ul>
  <% data.employees.each do |name, employee| %>
    <li><%= name %>
      <ul>
        <li><%= employee.role %></li>
        <li><%= employee.zipcode %></li>
      </ul>
    </li>
  <% end %>
</ul>
