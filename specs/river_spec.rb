require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Dory")
    @river1 = River.new("Amazon")
  end

  def test_river_has_name
    assert_equal("Amazon", @river1.name)
  end

  def test_count_fish_in_river
    assert_equal(0, @river1.count_fish_in_river)
  end

  def test_add_fish_to_river
    @river1.add_fish(@fish2)
    assert_equal(1, @river1.count_fish_in_river)
  end

  # def test_remove_fish_from_river
  #
  # end
end
