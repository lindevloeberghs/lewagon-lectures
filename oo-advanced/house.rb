class House
  attr_accessor :name, :height, :width, :length
  def initialize(name, height, width, length)
    @name = name
    @height, @width, @length = height, width, length
  end

  def floor_area
    width * length
  end

end
