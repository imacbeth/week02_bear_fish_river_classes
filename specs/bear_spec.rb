require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")
require_relative("../bear.rb")

class BearTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Dory")
    @river1 = River.new("Amazon")
    @bear1 = Bear.new("Yogi", "Grizzly")
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear1.name)
  end



  def test_bear_food_count
    assert_equal(0, @bear1.food_count)
  end

  def test_bear_can_get_fish
    @bear1.get_fish(@fish1)
    assert_equal(1, @bear1.food_count)
  end

  def test_bear_can_get_fish_from_river
    @river1.add_fish(@fish1)
    @bear1.get_fish_from_river(@river1)
    assert_equal(1, @bear1.food_count)
    assert_equal(0, @river1.count_fish_in_river)
  end

  # def test_bear_can_get_fish_from_river
  #  @river1.add_fish(@fish1)
  #  @river1.add_fish(@fish2)
  #  @bear1.get_fish_from_river(@fish1)
  #  @river1.remove_fish(@fish1)
  #  assert_equal(1, @bear1.food_count)
  #  assert_equal(1, @river.count_fish_in_river)
  # end
end
