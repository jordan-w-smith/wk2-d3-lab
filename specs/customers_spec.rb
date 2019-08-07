require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../drink')

class TestCustomer < MiniTest::Test
  def setup
    @customer = Customer.new('john', 50, 18)
    @drink = Drink.new('whisky', 4.99)
  end

  def test_customer_name
    assert_equal('john', @customer.name())
  end

  def test_customer_wallet_balance
    assert_equal(50, @customer.wallet())
  end

  def test_customer_pay_for_drink
    @customer.pay_for_drink(@drink.price)
    assert_equal(45.01, @customer.wallet)
  end

  def test_customer_age
    assert_equal(18, @customer.age)
  end
end
