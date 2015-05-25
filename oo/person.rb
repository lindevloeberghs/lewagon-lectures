class Person

  attr_reader :age
  attr_accessor :zipcode

  def initialize(age, zipcode)
    @age = age
    @zipcode = zipcode
  end

end

lien = Person.new(28, 9000)
p lien.age
p lien.zipcode
lien.zipcode = 4590
p lien.zipcode

michel = Person.new(36, 9400)
