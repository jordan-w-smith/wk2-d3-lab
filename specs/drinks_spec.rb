require('minitest/autorun')
require('minitest/rg')
require_relative('../drink')

class TestDrink < MiniTest::Test
  def setup
    @drinks = Drink.new('whisky', 4.99, 1)
  end

  def test_drink_name
    assert_equal('whisky', @drink.name())
  end

  def test_drink_price
    assert_equal(4.99, @drink.price())
  end

end
