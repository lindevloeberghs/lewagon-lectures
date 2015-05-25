class House
  p self

  def initialize(name)
    @name = name
  end

  def example_self
    p self
  end

  def self.example_self_from_class_method
    p self
  end
end

loft = House.new("Loft Montmartre")
loft.example_self

flat = House.new("Flat Dublin")
flat.example_self

House.example_self_from_class_method
