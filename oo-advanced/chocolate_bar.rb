class ChocolateBar

  attr_reader :name, :calories

  def initialize()
    @name = name
    @calories = calories
    @size = 10
  end

  def eat_chunks
    if @size > 0
      p "Nom nom chocolate"
      @size -= 1
    else
      raise Exception.new("No more chunks")
    end
  end

end

mars = ChocolateBar.new("Mars", 235)
11.times do
  mars.eat_chunks
end
p mars.name
p mars.calories

