class Castle
  attr_accessor :name, :height, :width, :length
  def initialize(name, height, width, length)
    @name = name
    @height, @width, @length = height, width, length
  end

  def floor_area
    width * length + 300
  end

  def has_a_butler?
    @butler != nil
  end
end

white_castle = Castle.new("White Castle", 50, 50, 50)
white_castle.has_a_butler?
