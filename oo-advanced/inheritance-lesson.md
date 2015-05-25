First:
- go over chocolate_bar example as a repeat for what we learned yesterday:
  - we learned to create a class
  - instance variables
  - instance methods
  - accessors

Second:
  - show the castle, house and skyscraper example
  - let's focus on what's the same code and what's different
    - they share the same accessors and the same initializer and floor_area
  - refactor the code to building
  - introduce inheritance:
    - "Inheritance is used when classes need to share behavior and properties
       Subclasses inherit methods and instance variables from parents
       On top of that, subclasses can define more instance variables and methods"
  - use inheritance to create the castle class and the skyscrape class:
    - castle:
      - butler accessor (we can set and get the butler)
      - function has_a_butler?
      - overwrite the floor_area function:
        - Use super to access the parent method with the same name"
    - skyscraper:
      - function elevator_broken?
  - create instances of these classes
  - show who_am_i example for more super explanation, ask what will be printed

Third:
  - why do we use inheritance
    - DRY: don't repeat yourself
  - disclosure: when writing rail apps you'll probably not define a lot of parent / child classes
  - but you'll inherit for your classes from rails classes
  - for ex:
    - ActiveRecord::Base
    - ActionController::Base


