require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Dory")
  end

  def test_fish_has_name
    assert_equal("Nemo", @fish1.name)
  end

end
