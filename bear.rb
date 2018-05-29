class Bear
  attr_reader :name, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def food_count
    return @stomach.length()
  end

  def get_fish(fish)
    @stomach.push(fish)
  end


  def get_fish_from_river(river)
    for fish in river.fish_count()
     get_fish(fish)
   end
   river.remove_fish
  end
end
