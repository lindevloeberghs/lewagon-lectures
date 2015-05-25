require 'building.rb'

class NewCastle < Building
  def has_a_butler?
    @butler != nil
  end
end

white_castle = NewCastle.new("White Castle", 50, 50, 50)
white_castle.has_a_butler?
