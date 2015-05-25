class Building
  attr_accessor :name, :height, :width, :length
  def initialize(name, height, width, length)
    @name = name
    @height, @width, @length = height, width, length
  end

  def floor_area
    width * length
  end
end

building = Building.new("White Castle", 50, 50, 50)
p building.floor_area

class Castle < Building
  attr_accessor :butler

  def has_a_butler?
    @butler != nil
  end

  # add 300 sq m because castles have a big garden
  def floor_area
    super + 300
  end
end

white_castle = Castle.new("White Castle", 50, 50, 50)
p white_castle.has_a_butler?
p white_castle.floor_area
white_castle.butler = "carl"
p white_castle.has_a_butler?
p "the butler is?"
p white_castle.butler

class Skyscraper < Building
  def elevator_broken?
    rand(10) == 1
  end
end

big_building = Skyscraper.new("Big Building", 250, 50, 50)
p "the lift is broken?"
p big_building.elevator_broken?

house = Building.new("House", 20, 20, 20)

