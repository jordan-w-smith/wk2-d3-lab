require('minitest/autorun')
require('minitest/rg')
require_relative('../customers')

class TestCustomers < MiniTest::Test
  def setup
    @customers = Customers.new('john', 50)
  end

  def test_customer_name
    assert_equal('john', @customers.name())
  end

  def test_customer_wallet_balance
    assert_equal(50, @customers.wallet())
  end
end
