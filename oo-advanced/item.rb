class Item
  def self.show
    puts "Class method show invoked"
  end
end

Item.show


class DifferentItem
  class << self
    def show
      puts "Class method show invoked"
    end
  end
end

DifferentItem.show
