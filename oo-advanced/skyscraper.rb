class Skyscraper
  attr_accessor :name, :height, :width, :length
  def initialize(name, height, width, length)
    @name = name
    @height, @width, @length = height, width, length
  end

  def floor_area
    width * length
  end

  def elevator_broken?
    rand(10) == 1
  end
end

big_building = Skyscraper.new("Big Building", 250, 50, 50)
p big_building.elevator_broken?

