class Butler

  def initialize(name, fancy_house)
    p self
    @name = name
    @fancy_house = fancy_house
    p self
  end

  def clean_house
    puts "#{@fancy_house.name} cleaned!"
    puts "the house was very expensive: #{@fancy_house.price}"
  end
end

class FancyHouse
  attr_reader :name, :butler, :price

  def initialize(name, price)
    @name = name
    @price = price
    p self
    @butler = Butler.new("carlos", self)
  end
end

house = FancyHouse.new("It is so fancy", 300000)
# p house.butler
# p house.name
# p house.price
# house.butler.clean_house
