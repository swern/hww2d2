require('minitest/autorun')
require_relative('../river_class')
require_relative('../fish_class')

class TestRiver < MiniTest::Test

  def setup
    fish_1 = Fish.new("salmon")
    fish_2 = Fish.new("cod")
    fish_3 = Fish.new("haddock")

    fishes = [fish_1, fish_2, fish_3]

    @river = River.new( fishes )
  end 

def test_initial_state
  assert_equal(3, @river.number_of_fishes())
end

def test_can_get_fish
  retrieved_fish = @river.get_fish()
  assert_equal( "Fred", retrieved_fish.name())
end  

def test_loses_fish
  def test_can_get_fish
    retrieved_fish = @river.get_fish()
    assert_equal( 2, )
end