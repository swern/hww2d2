require('minitest/autorun')
require_relative('../bear_class')

class TestBear < MiniTest::Test 

  def setup
    bear_1 = Bear.new('Yogi', 'Grizzly')
    bear_2 = Bear.new('Rupert', 'Teddy')

    @bears = [bear_1, bear_2]

  end

  def test_roar()
    assert_equal("Roar", @bears[0].roar)
  end

end 