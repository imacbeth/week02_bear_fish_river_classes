class River

  attr_reader :name, :fish_count

  def initialize(name)
    @name = name
    @fish_count = []
  end

  def count_fish_in_river()
    return @fish_count.length
  end

  def add_fish(fish)
    @fish_count.push(fish)
  end



end
