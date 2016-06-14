require('minitest/autorun')
require_relative('../bear_class')

class TestBear < MiniTest::Test 

  def setup
    bear_1 = Bear.new('Yogi', 'Grizzly')
    bear_2 = Bear.new('Rupert', 'Teddy')

    @bears = [bear_1, bear_2]

    fish_1 = Fish.new("salmon")
    fish_2 = Fish.new("cod")
    fish_3 = Fish.new("haddock")

    fishes = [fish_1, fish_2, fish_3]

    @river = River.new( fishes )

  end

  def test_roar()
    assert_equal("Roar", @bears[0].roar)
  end

  def test_bear_has_empty_food()
    assert_equal(0, @bear.food_count)
  end

  def test_bear_can_take_food_from_river()
    @bear.take_fish_from_river( @river )
    assert_equal( 1, @bear.food_count())
  end
end   