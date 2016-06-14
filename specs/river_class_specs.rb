require('minitest/autorun')
require_relative('../river_class')
require_relative('../fish_class')

class TestRiver < MiniTest::Test

  def setup
    fish_1 = Fish.new("salmon")
    fish_2 = Fish.new("cod")
    fish_3 = Fish.new("haddock")

    fishes = [fish_1, fish_2, fish_3]

    @fish = Fish.new( fishes )
  end 

end