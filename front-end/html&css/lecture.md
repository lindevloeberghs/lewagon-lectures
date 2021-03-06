# SETUP:
  SLIDES: go over the slides with things they have to install
  -Setup:
    - We are going to have to install some more gems and sublime packages. To speed up things for this lecture, I have already done this. After the lecture this should be the first thing you do
      - gem install middleman
      - sublime packages
      - browser plugins
      - sketch
# Introduction:
  NO SLIDES
    - Today we are switching to the front-end part of web development. So for now you can put your worries about ruby and databases aside. All the things you've been done before is what you could call the "back-end" and now for the next week our focus will be on the front-end part.
    - If you want me to explain the difference between front and back-end in a very simplified way, I'd say that you should imagine your web app or your website as a car. And there's a lot of stuff inside the car that will help it run, make it speed up, slow down or keep the lights up. You can't see those things directly that are responsible for it but it still all works, that is what you could call the the back-end.
      The items that you directly use to make your car go: the gas and brake pedals, the wheel. But also the color it has and maybe the leather interior, the stuff you can see, hear and touch, that would be the front-end
# Sidenote:
  There are 3 programming languages we're going to cover in the front-end part, it is important that you know which language is responsible for what. So:
    - HTML: (hypertext markup language) this is used to structure the web page and to add the content
    OPEN: file://localhost/Users/lien/code/lewagon-lectures/front-end/html&css/only-html.html
    - CSS: cascading style sheets: make it look pretty
    OPEN: file:///Users/lien/code/lewagon-lectures/front-end/html&css/html-css.html
    - JS: javascript: make it dynamic
    OPEN: file:///Users/lien/code/lewagon-lectures/front-end/html&css/html-css-js.html#
    (click on the button this time)
  SLIDES
# HTML:
  We'll start with HTML!
  The type of language it is is a markup language, so it uses tags to identify this content. Let's start with creating a HTML skeleton; this will the basic how you need to start every web page.
  CREATE: a new page (and recreate skeleton.html)
    - start with doctype: this  it is an instruction to the web browser about what version of HTML the page is written in. You can find more information about doctypes here: http://www.w3schools.com/tags/tag_doctype.asp
    - meta charset: The charset attribute specifies the character encoding for the HTML document, again we're letting our browser know what character encoding is used for the html document; More information can be found here: http://www.w3schools.com/tags/att_meta_charset.asp
  GO FAST OVER SLIDES
# HTML HEAD:
  Add meta property to our skeleton file; tell them this is for google or when the link is shared to other networks, like facebook.
  EDIT: skeleton.html (add code like in meta.html):
    <meta charset="utf-8">
    <meta name="description" content="this is the text that will show up in google results">
    <meta property="og:title" content="when we share our link on fb, this will be the title">
    <meta property="og:description" content="when we share our link on fb, this will be the description.">
    <meta property="og:site_name" content="If the page is part of a larger web site, the name which should be displayed for the overall site. "/>
  OPEN: http://ogp.me/ -> they can find a lot of information on this page about meta properties!
  SLIDES
# HTML BODY:
  EDIT:
    - add a title to our skeleton and go to the page
    - add a link to our skeleton page
      <a href="http://google.com">Google</a>
  SLIDES: element syntax
  So an element will usually (but not always) have a start and end tag, it can (but doesn't have to)
  contain one or more attributes.
  SLIDES: quiz on the slides!
    - element's name = a
    - element's content = "Le Wagon"
    - attributes:
      - href -> "http://www.lewagon.org"
      - target -> "_blank"
# HTML Basics:
  CREATE: html-basic.html (see html-basic.html)
  Now we're going to go over some different HTML elements that exist:
    - h1, h2, h3 -> titles (it's common practice that you only have one h1 element on your page)
    - p -> paragraphs
    - em + strong -> emphasize
    - lists: (unordered + ordered)
  There are a lot more elements and attributes you'll use during your web develepment career, but it would take up too much time to go over all of them. Once again, realize that google and stackoverflow are your buddies!
# CSS
  The web without css would be a very sad and boring place
  CREATE: simple web page with a title (see index.html)
  Let's say we want to have the title in red -> this is where we can use css
  CREATE: a new file style.css (see style.css)
  LINK the stylesheet to the index in the head
    <link rel="stylesheet" href="style.css">
# CSS Syntax:
  always a selector (can be on ore more elements of the page)
  and then you define the rules
  SLIDES: http://karr.lewagon.org/lectures/front/01-html-css/#/4/4
  EDIT: style.css:
    - font-size: 20px;
    - font-family: arial
# TEXT vs BACKGROUND
  EDIT: style.css
    - add styling for body:
    body {
      color: orange;
      background-color: yellow
    }
    - add "hello from the body" in index.html
# DIV and Box Model
  By using the box model we can add a border around elements or define space between different elements
  You should see the box model as a box that wraps around each html element, it always consists of
    - margins: Clears an area outside the border. The margin is transparent
    - borders: A border that goes around the padding and content
    - padding: Clears an area around the content. The padding is transparent
    - the content
  CREATE: boxmodel.html (see boxmodel.html)
    Explain it, change some values to show them what happens
  CREATE boxmodel2.html (see boxmodel2.html)
    Explain it, change some values to show them what happens
  SLIDES: catch up until the end of box model!
# ID and Class
  OPEN: logo.html, now we want to change the size of the flower, cause it's supposed to take up less space. Now how could we do that? We could add a stylesheet and include it in that stylesheet:
  img {
    width: 40px;
  }
    Do this, show them that all the images resize, this is not what we want -> we only want the first one to resize! Here comes the need for id's!
  EDIT: logo.html -> add id="logo"
  EDIT: logo-style.css -> change img to #logo
  Now, what if we want to style all our staff pictures? We could use id, but that would be bad practice, since an id is supposed to be unique! But that's why we have class!
  EDIT: add .img-circle {border-radius: 50%} to logo-style.css

  You use id when it's unique and class when it needs to be reuasable!

  An element can have multiple classes
  EDIT: add .shadowed {box-shadow: 5px 5px 3px black;} to logo-style.css
  EDIT: add the class to logo.html

  An element can also have class(es) and an id!
  EDIT: add #leader{border: 5px solid red;} to logo-style.css
# Selectors:
 Go over the different selectors one more time
 OPEN (and show code) for selectors.html
 We're now going to style (create new: selectors-style.css):
  -let's make the h1 red and bold:
    h1 {color: red; font-weight: bold;}
  -justify the text:
    .text-justify { text-align: justify; }
  -style the navigation
    #navigation {position: fixed;top: 100;}
  -descendant selector:
    #navigation li {float: left;}
  -pseudo classes:
    a {
      color: red;
      text-decoration: none;
      }
    a:hover {
      text-decoration: underline;
    }
  OPEN: quiz1.html and ask how it's going to look like
  OPEN: quiz2.html and ask how it's going to look like
# LAYOUT
  This is the last part! You can almost start the exercises!
  What you need to know is that there are block elements (h1, p, ul, li) and inline elements (em, strong, a, img). The difference between block elements and inline elements is that a block element is always going to take up the maximum width (if it's not set) and always has a line-breake before and after the element! Let's show this with an example.

  OPEN: layout.html

  How to center a div? This is something you'll do a lot in your web career! :)
  CREATE: center.html
    - Have a simple html skeleton, but add a <div id="container"></div> tag
    - link the css file
  CREATE: center-style.css
    #container {
      margin: 0 auto;
      width: 400px;
      background-color: yellow;
      height: 1400px;
    }

# FLOATING
  How to get different divs next to each other -> use floating!
  Let's do this again with some examples!
    - CREATE float.html (add an remove float: left to really show them the difference!)
    - CREATE float-right.html (add an remove clear:right; to show them what happens with that)
    - CREATE float-both.html (add an remove clear:both to show what happens with p)

  NOW GO OVER THE EXERCISES


