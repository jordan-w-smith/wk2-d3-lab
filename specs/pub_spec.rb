require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')

class PubTest < MiniTest::Test
  def setup
    @pub = Pub.new('Ye Olde CodeClan', 0, ["beer", "gin", "whisky", "rum"])
  end

  def test_pub_name
    assert_equal('Ye Olde CodeClan', @pub.name)
  end

  def test_till_exists
    assert_equal(0, @pub.till)
  end

  def test_get_drinks
    assert_equal(["beer", "gin", "whisky", "rum"], @pub.drinks)
  end
end
