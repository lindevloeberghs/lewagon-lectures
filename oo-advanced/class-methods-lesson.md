First:
  - reminder: we use a class to create instances using the new method
  - livecode a very simple class and create a new instance (dog.rb)
  - reminder: a class can contain instance_methods, this is a method we'll call on the instance
  - livecode: add a instance method to the simple class (make_sound)
  - as they can see, we call the method on the instance (hence instance_method)
  - we can't call it on the class itself

Second:
  - Introduce class methods
  - livecode: change the dog instance method to a class method
    - convention in ruby to create class methods is to add self. before the function's name
    - show difference (we can't call class methods on instance, only on class)
  - when will we want to use class methods?
    - very simply put:
      - "You can create a class method if it does not need an instance"
      - "when you have stateless behavior and no need to initialization"
    - livecode add price_per_square_meter to house.rb
  - btw:
    - you will probably define more instance methods in your career than class methods
    - you've already used class methods:
      - Time.now now is a class method of Time which returns an instance of Time
      - Json.parse parse is a class method of JSON which returns an instance of Hash.
  - as a review create another small class (item class)


// price_per_square_meter
def self.price_per_square_meter(city)
    case city
    when "Paris" then 9000
    when "Brussels" then 3000
    else raise Exception.new("No data for #{city}")
    end
  end
