require('minitest/autorun')
require_relative('../fish_class')
require_relative('../river_class')

class TestFish < MiniTest::Test
  def setup
    fish_4 = Fish.new("nemo")
    fish_5 = Fish.new("dori")
    fish_6 = Fish.new("willy")

    river = [fish_4, fish_5, fish_6] 
  end
end
