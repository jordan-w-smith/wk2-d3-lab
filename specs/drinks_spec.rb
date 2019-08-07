require('minitest/autorun')
require('minitest/rg')
require_relative('../drinks')

class TestDrinks < MiniTest::Test
  def setup
    @drinks = Drinks.new('whisky', 4.99)
  end

  def test_drink_name
    assert_equal('whisky', @drinks.name())
  end

  def test_drink_price
    assert_equal(4.99, @drinks.price())
  end

end
