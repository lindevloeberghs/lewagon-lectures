# Sidenote
For these exercises there are two slides, the lecture is mostly based on the second slidedeck, since the first one is mostly providing you resources. But don't forget before you start the exercises to go over the slidedeck so you have all the interesting links.

# Introduction
In this lecture we're going to introduce bootstrap;
OPEN: http://getbootstrap.com/
What is bootstrap? It is a HTML, CSS and JS framework (so a front-end framework) and it made my life and it will make your life a lot easier. You'll use it during your project(s) and you'll be happy that it exists. But why would we use a framework like that? We use it because often we have to use the same css when I create a new project:
  - center the main div
  - buttons / navigation system ..
  - grid ("mobile first") / full responsive

Sidenote: it was created by our friends at Twitter as an internal framework, but in 2011 it was released as an open source project! So you can contribute to it if you want to.

The People at Le Wagon are nice too and they provided us with a boilerplate, that you can use everytime to start and it will already have the links to the bootstrap stylesheets available.
OPEN: boilerplate; tell them it's availble at: https://github.com/lewagon/bootstrap-boilerplate

The bootstrap website has a good documentation, so everything that is not covered in this lesson, you can find it at there website: http://getbootstrap.com/css/

If you want to get inspired with some websites: http://builtwithbootstrap.com/

# Basic CSS
So the good thing about using bootstrap is that it has a lot of pre-defined classes for us, so as soon as you include the bootstrap stylesheet we can start using them! There are classes for text-alignment, lists, images, buttons, ..

We'll go over a few examples, but once again, take a look at the documentation and examples at the bootstrap website and try out some things yourself! It is the best way to learn! So let's create some stuff, we're always going to start from the boiler plate le wagon provided for us:

CREATE: text-alignment.html
CREATE: list-inline.html
CREATE: buttons.html
CREATE: forms.html (remove the form-inline to show the difference)

# Components in bootstrap
Bootstrap has tons of reusable components like icons, dropdowns, input groups, navigation, alerts..
Don't reinvent the wheel! Use it when you can! Again, you can find more documentation and examples on http://getbootstrap.com/components/

CREATE: components.html
CREATE: navigation.html
CREATE: alerts.html

# Dynamic Components!
One of the cool things about bootstrap that it gives us a template to use modals, so dialogs in our app. Nice looking dialogs. Let's create one:

CREATE: modals.html (start from the boilerplate and add the code)

# Bootstrap Grid
The most neat and useful thing about bootstrap is that it includes a responsive, mobile first fluid grid system that appropriately scales up to 12 columns as the device size increases. So you'll use this to make sure your page is "responsive", which means that people who view it on their phone still have a nice experience and can read all the information. But also if I watch it on the big screen, it still works too.

It's a "mobile first" approach, so this means you focus on making it look good small and then you build on that for the regular screens.

Let's livecode it, starting from the boilerplate we earlier used:
CREATE grid.html, copy and paste your boilerplate in this file
  - bootstrap grid and the classes for the grid work with the container class
    - add a div with a class container <div class="container"></div>
  - the grid contains 12 columns, but before you add columns, you're going to want to put these in a row
    - add a div with a class row <div class="row"></div>
  - you can add as many rows as you want in a bootstrap grid, so let's add two more
    - add two div's with a class row <div class="row"></div> under the div you already created
  - now remove the last two div's again, this was to show that you can actually do it, we actually for our example are going to create an example with one row and two columns:
    - add two div's in the first row div that we created (it should be the only that is left)
      - <div class="col-xs-6"></div>
      - now we defined two divs within our row that each will use 6 columns as the width
        - xs: used for extra small devices, think phones
        - sm: used for small devices, think tablets
        - md: used for medium devices, think laptops
        - lg: used for large devices, think external big screens
  - now if we would add another <div class="col-xs-6"></div> in our first row, what would happen?
    - try it out! you'll see that it just starts on a new line (so bootstrap is going to respect what you created and because there's not enough space for you to add the third column, it just is placed on the next row)

Another example! Now we want 4 blocks for tablets or larger screens, but on mobiles we want to have two rows with 2 blocks each! How would we do that?
CREATE grid2.html, add the boilerplate again (so it will load the bootstrap stylesheets)
  - first add the div with a container class
  - in that div create your row and column divs:
    - <div class="col-xs-6 col-sm-3"></div>

# Bootstrap Grid Best Practices
Some best practices for being succesful with bootstrap grid:
  - always create your container div first
  - everything goes inside that
  - then the row, and then the columns
  - don't change the box-model (margin, border, padding, width) of the grid elements (container, row, col)
  - if you want to add your own classes (and thus own styling):
    - place a div around the container or inside the col divs

SHOW: best_practices.html

Go over the exercises.md and good luck!


