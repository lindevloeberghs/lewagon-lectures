class Car
  attr_reader :color
  def initialize(color = "red")
    @color = color
  end
end

default_car = Car.new
p default_car.color

green_car = Car.new("green")
p green_car.color
