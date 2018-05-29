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

end
