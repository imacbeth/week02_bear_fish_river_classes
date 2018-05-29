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

end
