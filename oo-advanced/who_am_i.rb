class Building
  def initialize(name)
    @name = name
  end

  def who_am_i
    "I am a building"
  end
end

class House < Building
  def who_am_i
    puts "Before all.."
    super
    puts "But more specifically, I am a house"
  end
end

house = House.new("house_name")

