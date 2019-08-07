require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')
require_relative('../customer')

class PubTest < MiniTest::Test
  def setup
    @pub = Pub.new('Ye Olde CodeClan', 0, ["beer", "gin", "whisky", "rum"])
    #Customer name, Wallet, Age, Drunkeness Level
    @customer = Customer.new('john', 50, 18, 5)
    @drink = Drink.new('whisky', 4.99)
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

  def test_process_sale
    @pub.process_sale(@customer, @drink.price)
    # assert_equal(45.01, @customer.wallet())
    assert_equal(4.99, @pub.till())
  end

  def test_customer_age__is_old_enough
    assert_equal(true, @pub.check_customer_age(@customer))
  end

  def test_customer_age__not_old_enough
    young_customer = Customer.new('alex', 50, 17, 3)
    assert_equal(false, @pub.check_customer_age(young_customer))
  end

  def tets_drunkeness_level
    assert_equal(true, @pub.check_customer_drunkeness(@customer))
  end

end
